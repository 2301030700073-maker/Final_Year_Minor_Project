package androidx.profileinstaller;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum FileSectionType {
    DEX_FILES("DEX_FILES"),
    EXTRA_DESCRIPTORS("EXTRA_DESCRIPTORS"),
    CLASSES("CLASSES"),
    METHODS("METHODS"),
    AGGREGATION_COUNT("AGGREGATION_COUNT");

    private final long mValue;

    FileSectionType(String str) {
        this.mValue = r2;
    }

    public final long getValue() {
        return this.mValue;
    }
}
