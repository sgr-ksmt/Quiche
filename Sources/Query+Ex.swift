//
//  Query+Ex.swift
//  Quiche
//
//  Created by suguru-kishimoto on 2018/05/28.

import Foundation
import FirebaseFirestore

private func keyPathToField<R,V>(_ keyPath: KeyPath<R, V>) -> String {
    guard let field = keyPath._kvcKeyPathString else {
        fatalError("invalid keyPath: \(keyPath)")
    }
    return field
}

public extension Query {
    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isEqualTo value: V) -> Query {
        return whereField(keyPathToField(keyPath), isEqualTo: value)
    }

    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isEqualTo value: V) -> Query where V: RawRepresentable {
        return whereField(keyPathToField(keyPath), isEqualTo: value.rawValue)
    }

    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isLessThan value: V) -> Query {
        return whereField(keyPathToField(keyPath), isLessThan: value)
    }

    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isLessThanOrEqualTo value: V) -> Query {
        return whereField(keyPathToField(keyPath), isLessThanOrEqualTo: value)
    }

    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isGreaterThan value: V) -> Query {
        return whereField(keyPathToField(keyPath), isGreaterThan: value)
    }

    public func whereField<R, V>(_ keyPath: KeyPath<R, V>, isGreaterThanOrEqualTo value: V) -> Query {
        return whereField(keyPathToField(keyPath), isGreaterThanOrEqualTo: value)
    }

    public func order<R, V>(by keyPath: KeyPath<R, V>) -> Query {
        return order(by: keyPathToField(keyPath))
    }

    public func order<R, V>(by keyPath: KeyPath<R, V>, descending: Bool) -> Query {
        return order(by: keyPathToField(keyPath), descending: descending)
    }

    public func whereReference(_ field: String, isEqualTo reference: DocumentReference) -> Query {
        return whereField(field, isEqualTo: reference)
    }
}
