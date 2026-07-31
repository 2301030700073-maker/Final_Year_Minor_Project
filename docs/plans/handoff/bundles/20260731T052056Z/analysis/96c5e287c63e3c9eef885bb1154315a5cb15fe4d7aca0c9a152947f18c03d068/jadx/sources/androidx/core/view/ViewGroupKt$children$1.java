package androidx.core.view;

import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewGroupKt$children$1 implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ViewGroup $this_children;

    public /* synthetic */ ViewGroupKt$children$1(ViewGroup viewGroup, int i) {
        this.$r8$classId = i;
        this.$this_children = viewGroup;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        int i = this.$r8$classId;
        ViewGroup viewGroup = this.$this_children;
        switch (i) {
            case 0:
                viewGroup.getClass();
                return new UIntArray.Iterator(2, viewGroup);
            default:
                viewGroup.getClass();
                return new TreeIterator(new UIntArray.Iterator(2, viewGroup));
        }
    }
}
