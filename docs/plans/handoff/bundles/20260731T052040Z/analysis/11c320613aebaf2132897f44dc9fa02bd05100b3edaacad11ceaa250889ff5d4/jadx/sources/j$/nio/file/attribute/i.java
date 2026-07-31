package j$.nio.file.attribute;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class i implements FileAttribute {
    public final /* synthetic */ java.nio.file.attribute.FileAttribute a;

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.attribute.FileAttribute fileAttribute = this.a;
        if (obj instanceof i) {
            obj = ((i) obj).a;
        }
        return fileAttribute.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ String name() {
        return this.a.name();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public final /* synthetic */ Object value() {
        return this.a.value();
    }
}
