package kotlinx.serialization.json.internal;

import kotlinx.serialization.json.Json;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposerWithPrettyPrint extends Composer {
    public final Json json;
    public int level;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerWithPrettyPrint(InternalJsonWriter internalJsonWriter, Json json) {
        super(internalJsonWriter);
        json.getClass();
        this.json = json;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void indent() {
        this.writingFirst = true;
        this.level++;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void nextItem() {
        this.writingFirst = false;
        InternalJsonWriter internalJsonWriter = (InternalJsonWriter) this.writer;
        internalJsonWriter.write("\n");
        int i = this.level;
        for (int i2 = 0; i2 < i; i2++) {
            String str = this.json.configuration.prettyPrintIndent;
            str.getClass();
            internalJsonWriter.write(str);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void nextItemIfNotFirst() {
        if (this.writingFirst) {
            this.writingFirst = false;
        } else {
            nextItem();
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void space() {
        print(' ');
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void unIndent() {
        this.level--;
    }
}
