package kotlinx.serialization.json;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JsonConfiguration {
    public final String classDiscriminator;
    public final ClassDiscriminatorMode classDiscriminatorMode;
    public final boolean coerceInputValues;
    public final boolean encodeDefaults;
    public final boolean exceptionsWithDebugInfo;
    public final boolean explicitNulls;
    public final boolean ignoreUnknownKeys;
    public final boolean prettyPrint;
    public final String prettyPrintIndent;
    public final boolean useAlternativeNames;

    public JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, String str, boolean z5, String str2, boolean z6, ClassDiscriminatorMode classDiscriminatorMode, boolean z7) {
        str.getClass();
        str2.getClass();
        classDiscriminatorMode.getClass();
        this.encodeDefaults = z;
        this.ignoreUnknownKeys = z2;
        this.prettyPrint = z3;
        this.explicitNulls = z4;
        this.prettyPrintIndent = str;
        this.coerceInputValues = z5;
        this.classDiscriminator = str2;
        this.useAlternativeNames = z6;
        this.classDiscriminatorMode = classDiscriminatorMode;
        this.exceptionsWithDebugInfo = z7;
    }

    public final String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=false, allowStructuredMapKeys=false, prettyPrint=" + this.prettyPrint + ", explicitNulls=" + this.explicitNulls + ", prettyPrintIndent='" + this.prettyPrintIndent + "', coerceInputValues=" + this.coerceInputValues + ", useArrayPolymorphism=false, classDiscriminator='" + this.classDiscriminator + "', allowSpecialFloatingPointValues=false, useAlternativeNames=" + this.useAlternativeNames + ", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=" + this.classDiscriminatorMode + ", exceptionsWithDebugInfo=" + this.exceptionsWithDebugInfo + ')';
    }
}
