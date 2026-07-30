package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;

/* compiled from: ViewGroup.kt */
/* loaded from: classes.dex */
public abstract class ViewGroupKt {
    public static final Iterator iterator(ViewGroup viewGroup) {
        return new ViewGroupKt$iterator$1(viewGroup);
    }

    public static final Sequence getChildren(final ViewGroup viewGroup) {
        return new Sequence() { // from class: androidx.core.view.ViewGroupKt$children$1
            @Override // kotlin.sequences.Sequence
            public Iterator iterator() {
                return ViewGroupKt.iterator(viewGroup);
            }
        };
    }

    public static final Sequence getDescendants(final ViewGroup viewGroup) {
        return new Sequence() { // from class: androidx.core.view.ViewGroupKt$special$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator iterator() {
                return new TreeIterator(ViewGroupKt.getChildren(viewGroup).iterator(), new Function1() { // from class: androidx.core.view.ViewGroupKt$descendants$1$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Iterator invoke(View view) {
                        Sequence children;
                        ViewGroup viewGroup2 = view instanceof ViewGroup ? (ViewGroup) view : null;
                        if (viewGroup2 == null || (children = ViewGroupKt.getChildren(viewGroup2)) == null) {
                            return null;
                        }
                        return children.iterator();
                    }
                });
            }
        };
    }
}
