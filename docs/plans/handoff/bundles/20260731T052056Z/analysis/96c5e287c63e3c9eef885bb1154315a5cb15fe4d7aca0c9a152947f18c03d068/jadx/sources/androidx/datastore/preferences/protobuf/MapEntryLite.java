package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.PreferencesProto$Value;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapEntryLite {
    public final Metadata metadata;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Metadata {
        public final Object defaultValue;
        public final WireFormat$FieldType keyType;
        public final WireFormat$FieldType valueType;

        public Metadata(WireFormat$FieldType wireFormat$FieldType, WireFormat$FieldType wireFormat$FieldType2, Object obj) {
            this.keyType = wireFormat$FieldType;
            this.valueType = wireFormat$FieldType2;
            this.defaultValue = obj;
        }
    }

    public MapEntryLite(WireFormat$FieldType wireFormat$FieldType, WireFormat$FieldType wireFormat$FieldType2, PreferencesProto$Value preferencesProto$Value) {
        this.metadata = new Metadata(wireFormat$FieldType, wireFormat$FieldType2, preferencesProto$Value);
    }
}
