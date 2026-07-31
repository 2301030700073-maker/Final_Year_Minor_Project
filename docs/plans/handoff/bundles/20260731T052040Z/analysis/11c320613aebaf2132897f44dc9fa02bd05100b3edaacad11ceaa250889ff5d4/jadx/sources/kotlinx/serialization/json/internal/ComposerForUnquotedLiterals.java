package kotlinx.serialization.json.internal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposerForUnquotedLiterals extends Composer {
    public final boolean forceQuoting;

    public ComposerForUnquotedLiterals(InternalJsonWriter internalJsonWriter, boolean z) {
        super(internalJsonWriter);
        this.forceQuoting = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void printQuoted(String str) {
        str.getClass();
        InternalJsonWriter internalJsonWriter = (InternalJsonWriter) this.writer;
        if (this.forceQuoting) {
            internalJsonWriter.writeQuoted(str);
        } else {
            internalJsonWriter.write(str);
        }
    }
}
