// Generated using the ObjectBox Swift Generator — https://objectbox.io
// DO NOT EDIT

// swiftlint:disable all
import ObjectBox
import Foundation

// MARK: - Entity metadata


extension AddressDb: ObjectBox.__EntityRelatable {
    internal typealias EntityType = AddressDb

    internal var _id: EntityId<AddressDb> {
        return EntityId<AddressDb>(self.id.value)
    }
}

extension AddressDb: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = AddressDbBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "AddressDb", id: 5)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: AddressDb.self, id: 5, uid: 4390325242057575936)
        try entityBuilder.addProperty(name: "id", type: Id.entityPropertyType, flags: [.id], id: 1, uid: 7426802463388257024)
        try entityBuilder.addProperty(name: "street", type: String.entityPropertyType, id: 2, uid: 8349566510347696640)
        try entityBuilder.addProperty(name: "suite", type: String.entityPropertyType, id: 3, uid: 6827465945537019136)
        try entityBuilder.addProperty(name: "city", type: String.entityPropertyType, id: 4, uid: 576931479202536448)
        try entityBuilder.addProperty(name: "zipcode", type: String.entityPropertyType, id: 5, uid: 4855266342368899840)
        try entityBuilder.addToOneRelation(name: "geo", targetEntityInfo: ToOne<GeoDb>.Target.entityInfo, id: 6, uid: 7739593610121184256, indexId: 1, indexUid: 7072766085473294592)

        try entityBuilder.lastProperty(id: 6, uid: 7739593610121184256)
    }
}

extension AddressDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { AddressDb.id == myId }
    internal static var id: Property<AddressDb, Id, Id> { return Property<AddressDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { AddressDb.street.startsWith("X") }
    internal static var street: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { AddressDb.suite.startsWith("X") }
    internal static var suite: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { AddressDb.city.startsWith("X") }
    internal static var city: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 4, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { AddressDb.zipcode.startsWith("X") }
    internal static var zipcode: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 5, isPrimaryKey: false) }
    internal static var geo: Property<AddressDb, EntityId<ToOne<GeoDb>.Target>, ToOne<GeoDb>.Target> { return Property(propertyId: 6) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == AddressDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<AddressDb, Id, Id> { return Property<AddressDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .street.startsWith("X") }

    internal static var street: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .suite.startsWith("X") }

    internal static var suite: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .city.startsWith("X") }

    internal static var city: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 4, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .zipcode.startsWith("X") }

    internal static var zipcode: Property<AddressDb, String, Void> { return Property<AddressDb, String, Void>(propertyId: 5, isPrimaryKey: false) }

    internal static var geo: Property<AddressDb, ToOne<GeoDb>.Target.EntityBindingType.IdType, ToOne<GeoDb>.Target> { return Property<AddressDb, ToOne<GeoDb>.Target.EntityBindingType.IdType, ToOne<GeoDb>.Target>(propertyId: 6) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `AddressDb.EntityBindingType`.
internal class AddressDbBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = AddressDb
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_street = propertyCollector.prepare(string: entity.street)
        let propertyOffset_suite = propertyCollector.prepare(string: entity.suite)
        let propertyOffset_city = propertyCollector.prepare(string: entity.city)
        let propertyOffset_zipcode = propertyCollector.prepare(string: entity.zipcode)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        try propertyCollector.collect(entity.geo, at: 2 + 2 * 6, store: store)
        propertyCollector.collect(dataOffset: propertyOffset_street, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_suite, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_city, at: 2 + 2 * 4)
        propertyCollector.collect(dataOffset: propertyOffset_zipcode, at: 2 + 2 * 5)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.geo.attach(to: store.box(for: GeoDb.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 6:
                entity.geo.targetId = (entityId != nil) ? EntityId<GeoDb>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = AddressDb()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.street = entityReader.read(at: 2 + 2 * 2)
        entity.suite = entityReader.read(at: 2 + 2 * 3)
        entity.city = entityReader.read(at: 2 + 2 * 4)
        entity.zipcode = entityReader.read(at: 2 + 2 * 5)

        entity.geo = entityReader.read(at: 2 + 2 * 6, store: store)
        return entity
    }
}



extension CompanyDb: ObjectBox.__EntityRelatable {
    internal typealias EntityType = CompanyDb

    internal var _id: EntityId<CompanyDb> {
        return EntityId<CompanyDb>(self.id.value)
    }
}

extension CompanyDb: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = CompanyDbBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "CompanyDb", id: 1)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: CompanyDb.self, id: 1, uid: 7722463962757434624)
        try entityBuilder.addProperty(name: "id", type: Id.entityPropertyType, flags: [.id], id: 1, uid: 7531267222286541312)
        try entityBuilder.addProperty(name: "name", type: String.entityPropertyType, id: 2, uid: 522147435317696512)
        try entityBuilder.addProperty(name: "catchPhrase", type: String.entityPropertyType, id: 3, uid: 5926284655928853248)
        try entityBuilder.addProperty(name: "bs", type: String.entityPropertyType, id: 4, uid: 7394275685135287040)

        try entityBuilder.lastProperty(id: 4, uid: 7394275685135287040)
    }
}

extension CompanyDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CompanyDb.id == myId }
    internal static var id: Property<CompanyDb, Id, Id> { return Property<CompanyDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CompanyDb.name.startsWith("X") }
    internal static var name: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CompanyDb.catchPhrase.startsWith("X") }
    internal static var catchPhrase: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CompanyDb.bs.startsWith("X") }
    internal static var bs: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 4, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == CompanyDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<CompanyDb, Id, Id> { return Property<CompanyDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .catchPhrase.startsWith("X") }

    internal static var catchPhrase: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .bs.startsWith("X") }

    internal static var bs: Property<CompanyDb, String, Void> { return Property<CompanyDb, String, Void>(propertyId: 4, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `CompanyDb.EntityBindingType`.
internal class CompanyDbBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = CompanyDb
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)
        let propertyOffset_catchPhrase = propertyCollector.prepare(string: entity.catchPhrase)
        let propertyOffset_bs = propertyCollector.prepare(string: entity.bs)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_catchPhrase, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_bs, at: 2 + 2 * 4)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = CompanyDb()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.name = entityReader.read(at: 2 + 2 * 2)
        entity.catchPhrase = entityReader.read(at: 2 + 2 * 3)
        entity.bs = entityReader.read(at: 2 + 2 * 4)

        return entity
    }
}



extension GeoDb: ObjectBox.__EntityRelatable {
    internal typealias EntityType = GeoDb

    internal var _id: EntityId<GeoDb> {
        return EntityId<GeoDb>(self.id.value)
    }
}

extension GeoDb: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = GeoDbBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "GeoDb", id: 4)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: GeoDb.self, id: 4, uid: 2204876026922998528)
        try entityBuilder.addProperty(name: "id", type: Id.entityPropertyType, flags: [.id], id: 1, uid: 6146062439328493824)
        try entityBuilder.addProperty(name: "lat", type: String.entityPropertyType, id: 2, uid: 4089577929482782976)
        try entityBuilder.addProperty(name: "lng", type: String.entityPropertyType, id: 3, uid: 4997339042189014528)

        try entityBuilder.lastProperty(id: 3, uid: 4997339042189014528)
    }
}

extension GeoDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { GeoDb.id == myId }
    internal static var id: Property<GeoDb, Id, Id> { return Property<GeoDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { GeoDb.lat.startsWith("X") }
    internal static var lat: Property<GeoDb, String, Void> { return Property<GeoDb, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { GeoDb.lng.startsWith("X") }
    internal static var lng: Property<GeoDb, String, Void> { return Property<GeoDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == GeoDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<GeoDb, Id, Id> { return Property<GeoDb, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .lat.startsWith("X") }

    internal static var lat: Property<GeoDb, String, Void> { return Property<GeoDb, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .lng.startsWith("X") }

    internal static var lng: Property<GeoDb, String, Void> { return Property<GeoDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `GeoDb.EntityBindingType`.
internal class GeoDbBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = GeoDb
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_lat = propertyCollector.prepare(string: entity.lat)
        let propertyOffset_lng = propertyCollector.prepare(string: entity.lng)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(dataOffset: propertyOffset_lat, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_lng, at: 2 + 2 * 3)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = GeoDb()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.lat = entityReader.read(at: 2 + 2 * 2)
        entity.lng = entityReader.read(at: 2 + 2 * 3)

        return entity
    }
}



extension UderDb: ObjectBox.__EntityRelatable {
    internal typealias EntityType = UderDb

    internal var _id: EntityId<UderDb> {
        return EntityId<UderDb>(self.idObjectBox.value)
    }
}

extension UderDb: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = UderDbBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "UderDb", id: 9)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: UderDb.self, id: 9, uid: 2806057558175625472)
        try entityBuilder.addProperty(name: "idObjectBox", type: UInt64.entityPropertyType, flags: [.id], id: 1, uid: 1992522440944499712)
        try entityBuilder.addProperty(name: "id", type: Int.entityPropertyType, id: 2, uid: 8359542330798834944)
        try entityBuilder.addProperty(name: "name", type: String.entityPropertyType, id: 3, uid: 4513791778414661120)
        try entityBuilder.addProperty(name: "username", type: String.entityPropertyType, id: 4, uid: 8025670117374785024)
        try entityBuilder.addProperty(name: "email", type: String.entityPropertyType, id: 5, uid: 3760785856417575424)
        try entityBuilder.addProperty(name: "phone", type: String.entityPropertyType, id: 6, uid: 6803393455331862272)
        try entityBuilder.addProperty(name: "website", type: String.entityPropertyType, id: 7, uid: 1330344758600632576)
        try entityBuilder.addToOneRelation(name: "address", targetEntityInfo: ToOne<AddressDb>.Target.entityInfo, id: 8, uid: 1717064122576292608, indexId: 3, indexUid: 1745425844472251648)
        try entityBuilder.addToOneRelation(name: "company", targetEntityInfo: ToOne<CompanyDb>.Target.entityInfo, id: 9, uid: 3861092123812257280, indexId: 4, indexUid: 3370545536847125760)

        try entityBuilder.lastProperty(id: 9, uid: 3861092123812257280)
    }
}

extension UderDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.idObjectBox == myId }
    internal static var idObjectBox: Property<UderDb, UInt64, UInt64> { return Property<UderDb, UInt64, UInt64>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.id > 1234 }
    internal static var id: Property<UderDb, Int, Void> { return Property<UderDb, Int, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.name.startsWith("X") }
    internal static var name: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.username.startsWith("X") }
    internal static var username: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 4, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.email.startsWith("X") }
    internal static var email: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 5, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.phone.startsWith("X") }
    internal static var phone: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 6, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { UderDb.website.startsWith("X") }
    internal static var website: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 7, isPrimaryKey: false) }
    internal static var address: Property<UderDb, EntityId<ToOne<AddressDb>.Target>, ToOne<AddressDb>.Target> { return Property(propertyId: 8) }

    internal static var company: Property<UderDb, EntityId<ToOne<CompanyDb>.Target>, ToOne<CompanyDb>.Target> { return Property(propertyId: 9) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.idObjectBox = UInt64(identifier)
    }
}

extension ObjectBox.Property where E == UderDb {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .idObjectBox == myId }

    internal static var idObjectBox: Property<UderDb, UInt64, UInt64> { return Property<UderDb, UInt64, UInt64>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id > 1234 }

    internal static var id: Property<UderDb, Int, Void> { return Property<UderDb, Int, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .username.startsWith("X") }

    internal static var username: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 4, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .email.startsWith("X") }

    internal static var email: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 5, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .phone.startsWith("X") }

    internal static var phone: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 6, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .website.startsWith("X") }

    internal static var website: Property<UderDb, String, Void> { return Property<UderDb, String, Void>(propertyId: 7, isPrimaryKey: false) }

    internal static var address: Property<UderDb, ToOne<AddressDb>.Target.EntityBindingType.IdType, ToOne<AddressDb>.Target> { return Property<UderDb, ToOne<AddressDb>.Target.EntityBindingType.IdType, ToOne<AddressDb>.Target>(propertyId: 8) }

    internal static var company: Property<UderDb, ToOne<CompanyDb>.Target.EntityBindingType.IdType, ToOne<CompanyDb>.Target> { return Property<UderDb, ToOne<CompanyDb>.Target.EntityBindingType.IdType, ToOne<CompanyDb>.Target>(propertyId: 9) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `UderDb.EntityBindingType`.
internal class UderDbBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = UderDb
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
        try propertyCollector.collect(entity.address, at: 2 + 2 * 8, store: store)
        try propertyCollector.collect(entity.company, at: 2 + 2 * 9, store: store)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_username, at: 2 + 2 * 4)
        propertyCollector.collect(dataOffset: propertyOffset_email, at: 2 + 2 * 5)
        propertyCollector.collect(dataOffset: propertyOffset_phone, at: 2 + 2 * 6)
        propertyCollector.collect(dataOffset: propertyOffset_website, at: 2 + 2 * 7)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.address.attach(to: store.box(for: AddressDb.self))
            entity.company.attach(to: store.box(for: CompanyDb.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 8:
                entity.address.targetId = (entityId != nil) ? EntityId<AddressDb>(entityId!) : nil
            case 9:
                entity.company.targetId = (entityId != nil) ? EntityId<CompanyDb>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = UderDb()

        entity.idObjectBox = entityReader.read(at: 2 + 2 * 1)
        entity.id = entityReader.read(at: 2 + 2 * 2)
        entity.name = entityReader.read(at: 2 + 2 * 3)
        entity.username = entityReader.read(at: 2 + 2 * 4)
        entity.email = entityReader.read(at: 2 + 2 * 5)
        entity.phone = entityReader.read(at: 2 + 2 * 6)
        entity.website = entityReader.read(at: 2 + 2 * 7)

        entity.address = entityReader.read(at: 2 + 2 * 8, store: store)
        entity.company = entityReader.read(at: 2 + 2 * 9, store: store)
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
    try AddressDb.buildEntity(modelBuilder: modelBuilder)
    try CompanyDb.buildEntity(modelBuilder: modelBuilder)
    try GeoDb.buildEntity(modelBuilder: modelBuilder)
    try UderDb.buildEntity(modelBuilder: modelBuilder)
    modelBuilder.lastEntity(id: 9, uid: 2806057558175625472)
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
