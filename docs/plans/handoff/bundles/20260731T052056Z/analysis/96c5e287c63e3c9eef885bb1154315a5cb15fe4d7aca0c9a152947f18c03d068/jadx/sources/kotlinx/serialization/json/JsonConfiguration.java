package kotlinx.serialization.json;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonConfiguration {
    public final String classDiscriminator;
    public final ClassDiscriminatorMode classDiscriminatorMode;
    public final boolean coerceInputValues;
    public final boolean exceptionsWithDebugInfo;
    public final boolean explicitNulls;
    public final boolean ignoreUnknownKeys;
    public final String prettyPrintIndent;
    public final boolean useAlternativeNames;

    public JsonConfiguration(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, ClassDiscriminatorMode classDiscriminatorMode, boolean z5) {
        str.getClass();
        str2.getClass();
        classDiscriminatorMode.getClass();
        this.ignoreUnknownKeys = z;
        this.explicitNulls = z2;
        this.prettyPrintIndent = str;
        this.coerceInputValues = z3;
        this.classDiscriminator = str2;
        this.useAlternativeNames = z4;
        this.classDiscriminatorMode = classDiscriminatorMode;
        this.exceptionsWithDebugInfo = z5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=");
        sb.append(this.ignoreUnknownKeys);
        sb.append(", isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls=");
        sb.append(this.explicitNulls);
        sb.append(", prettyPrintIndent='");
        sb.append(this.prettyPrintIndent);
        sb.append("', coerceInputValues=");
        sb.append(this.coerceInputValues);
        sb.append(", useArrayPolymorphism=false, classDiscriminator='");
        sb.append(this.classDiscriminator);
        sb.append("', allowSpecialFloatingPointValues=false, useAlternativeNames=");
        sb.append(this.useAlternativeNames);
        sb.append(", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=");
        sb.append(this.classDiscriminatorMode);
        sb.append(", exceptionsWithDebugInfo=");
        return Animation.CC.m(sb, this.exceptionsWithDebugInfo, ')');
    }
}
