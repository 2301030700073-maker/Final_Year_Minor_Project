package androidx.compose.runtime;

/* compiled from: SlotTable.kt */
/* loaded from: classes.dex */
final class RelativeGroupPath extends SourceInformationGroupPath {
    private final int index;
    private final SourceInformationGroupPath parent;

    public RelativeGroupPath(SourceInformationGroupPath sourceInformationGroupPath, int i) {
        super(null);
        this.parent = sourceInformationGroupPath;
        this.index = i;
    }
}
