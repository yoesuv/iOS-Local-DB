// Generated using the ObjectBox Swift Generator — https://objectbox.io
// DO NOT EDIT

// swiftlint:disable all
import ObjectBox
import Foundation

// MARK: - Entity metadata

extension UserDb: ObjectBox.Entity {}

extension UserDb: ObjectBox.__EntityRelatable {
    internal typealias EntityType = UserDb

    internal var _id: EntityId<UserDb> {
        return EntityId<UserDb>(self.idObjectBox.value)
    }
}

extension UserDb: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = UserDbBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "UserDb", id: 11)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: UserDb.self, id: 11, uid: 5403898587333376512)
        try entityBuilder.addProperty(name: "idObjectBox", type: UInt64.entityPropertyType, flags: [.id], id: 1, uid: 3410206595239616256)
        try entityBuilder.addProperty(name: "id", type: Int.entityPropertyType, id: 2, uid: 3215259498874509312)
        try entityBuilder.addProperty(name: "name", type: String.entityPropertyType, id: 3, uid: 6153532968214726400)
        try entityBuilder.addProperty(name: "username", type: String.entityPropertyType, id: 4, uid: 872028903469685504)
        try entityBuilder.addProperty(name: "email", type: String.entityPropertyType, id: 5, uid: 2304072031187689984)
        try entityBuilder.addProperty(name: "phone", type: String.entityPropertyType, id: 6, uid: 1034370072078116096)
        try entityBuilder.addProperty(name: "website", type: String.entityPropertyType, id: 7, uid: 3208706971348692992)

        try entityBuilder.lastProperty(id: 7, uid: 3208706971348692992)
    }
}

extension UserDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.idObjectBox == myId }
    internal static var idObjectBox: Property<UserDb, UInt64, UInt64> { return Property<UserDb, UInt64, UInt64>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.id > 1234 }
    internal static var id: Property<UserDb, Int, Void> { return Property<UserDb, Int, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.name.startsWith("X") }
    internal static var name: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.username.startsWith("X") }
    internal static var username: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 4, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.email.startsWith("X") }
    internal static var email: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 5, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.phone.startsWith("X") }
    internal static var phone: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 6, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UserDb.website.startsWith("X") }
    internal static var website: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 7, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.idObjectBox = UInt64(identifier)
    }
}

extension ObjectBox.Property where E == UserDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .idObjectBox == myId }

    internal static var idObjectBox: Property<UserDb, UInt64, UInt64> { return Property<UserDb, UInt64, UInt64>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id > 1234 }

    internal static var id: Property<UserDb, Int, Void> { return Property<UserDb, Int, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .username.startsWith("X") }

    internal static var username: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 4, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .email.startsWith("X") }

    internal static var email: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 5, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .phone.startsWith("X") }

    internal static var phone: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 6, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .website.startsWith("X") }

    internal static var website: Property<UserDb, String, Void> { return Property<UserDb, String, Void>(propertyId: 7, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `UserDb.EntityBindingType`.
internal class UserDbBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = UserDb
    internal typealias IdType = UInt64

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.idObjectBox.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)
        let propertyOffset_username = propertyCollector.prepare(string: entity.username)
        let propertyOffset_email = propertyCollector.prepare(string: entity.email)
        let propertyOffset_phone = propertyCollector.prepare(string: entity.phone)
        let propertyOffset_website = propertyCollector.prepare(string: entity.website)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(entity.id, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_username, at: 2 + 2 * 4)
        propertyCollector.collect(dataOffset: propertyOffset_email, at: 2 + 2 * 5)
        propertyCollector.collect(dataOffset: propertyOffset_phone, at: 2 + 2 * 6)
        propertyCollector.collect(dataOffset: propertyOffset_website, at: 2 + 2 * 7)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = UserDb()

        entity.idObjectBox = entityReader.read(at: 2 + 2 * 1)
        entity.id = entityReader.read(at: 2 + 2 * 2)
        entity.name = entityReader.read(at: 2 + 2 * 3)
        entity.username = entityReader.read(at: 2 + 2 * 4)
        entity.email = entityReader.read(at: 2 + 2 * 5)
        entity.phone = entityReader.read(at: 2 + 2 * 6)
        entity.website = entityReader.read(at: 2 + 2 * 7)

        return entity
    }
}


/// Helper function that allows calling Enum(rawValue: value) with a nil value, which will return nil.
fileprivate func optConstruct<T: RawRepresentable>(_ type: T.Type, rawValue: T.RawValue?) -> T? {
    guard let rawValue = rawValue else { return nil }
    return T(rawValue: rawValue)
}

// MARK: - Store setup

fileprivate func cModel() throws -> OpaquePointer {
    let modelBuilder = try ObjectBox.ModelBuilder()
    try UserDb.buildEntity(modelBuilder: modelBuilder)
    modelBuilder.lastEntity(id: 11, uid: 5403898587333376512)
    modelBuilder.lastIndex(id: 4, uid: 3370545536847125760)
    return modelBuilder.finish()
}

extension ObjectBox.Store {
    /// A store with a fully configured model. Created by the code generator with your model's metadata in place.
    ///
    /// - Parameters:
    ///   - directoryPath: The directory path in which ObjectBox places its database files for this store.
    ///   - maxDbSizeInKByte: Limit of on-disk space for the database files. Default is `1024 * 1024` (1 GiB).
    ///   - fileMode: UNIX-style bit mask used for the database files; default is `0o644`.
    ///     Note: directories become searchable if the "read" or "write" permission is set (e.g. 0640 becomes 0750).
    ///   - maxReaders: The maximum number of readers.
    ///     "Readers" are a finite resource for which we need to define a maximum number upfront.
    ///     The default value is enough for most apps and usually you can ignore it completely.
    ///     However, if you get the maxReadersExceeded error, you should verify your
    ///     threading. For each thread, ObjectBox uses multiple readers. Their number (per thread) depends
    ///     on number of types, relations, and usage patterns. Thus, if you are working with many threads
    ///     (e.g. in a server-like scenario), it can make sense to increase the maximum number of readers.
    ///     Note: The internal default is currently around 120.
    ///           So when hitting this limit, try values around 200-500.
    /// - important: This initializer is created by the code generator. If you only see the internal `init(model:...)`
    ///              initializer, trigger code generation by building your project.
    internal convenience init(directoryPath: String, maxDbSizeInKByte: UInt64 = 1024 * 1024,
                            fileMode: UInt32 = 0o644, maxReaders: UInt32 = 0, readOnly: Bool = false) throws {
        try self.init(
            model: try cModel(),
            directory: directoryPath,
            maxDbSizeInKByte: maxDbSizeInKByte,
            fileMode: fileMode,
            maxReaders: maxReaders,
            readOnly: readOnly)
    }
}

// swiftlint:enable all
