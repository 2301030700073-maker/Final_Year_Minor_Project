package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.text.MatcherMatchResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReversedListReadOnly extends AbstractList {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object delegate;

    public ReversedListReadOnly(List list) {
        list.getClass();
        this.delegate = list;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ boolean contains(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                if (obj instanceof String) {
                    return super.contains((String) obj);
                }
                return false;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.delegate;
        switch (i2) {
            case 0:
                return ((List) obj).get(CollectionsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i));
            default:
                String group = ((MatcherMatchResult) obj).matcher.group(i);
                return group == null ? "" : group;
        }
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        int i = this.$r8$classId;
        Object obj = this.delegate;
        switch (i) {
            case 0:
                return ((List) obj).size();
            default:
                return ((MatcherMatchResult) obj).matcher.groupCount() + 1;
        }
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ int indexOf(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                if (obj instanceof String) {
                    return super.indexOf((String) obj);
                }
                return -1;
            default:
                return super.indexOf(obj);
        }
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return new ReversedList$listIterator$1(this, 0);
            default:
                return super.iterator();
        }
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ int lastIndexOf(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                if (obj instanceof String) {
                    return super.lastIndexOf((String) obj);
                }
                return -1;
            default:
                return super.lastIndexOf(obj);
        }
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ListIterator listIterator() {
        switch (this.$r8$classId) {
            case 0:
                return new ReversedList$listIterator$1(this, 0);
            default:
                return super.listIterator();
        }
    }

    public ReversedListReadOnly(MatcherMatchResult matcherMatchResult) {
        this.delegate = matcherMatchResult;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        switch (this.$r8$classId) {
            case 0:
                return new ReversedList$listIterator$1(this, i);
            default:
                return super.listIterator(i);
        }
    }
}
