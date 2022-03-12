import Foundation

public func toCharacterArray(_ set: CharacterSet) -> [Character] {
    // https://stackoverflow.com/a/52133561
    
    var chars: [Character] = []
    chars.reserveCapacity(set.bitmapRepresentation.count)
    
    var plane = 0
    
    for (i, w) in set.bitmapRepresentation.enumerated() {
        let k = i % 0x2001
        
        if k == 0x2000 {
            plane = Int(w) << 13
            continue
        }
        
        let base = (plane + k) << 3
        for j in 0 ..< 8 where w & 1 << j != 0 {
            if let scalar = UnicodeScalar(base + j) {
                chars.append(Character(scalar))
            }
        }
    }
    
    return chars
}
