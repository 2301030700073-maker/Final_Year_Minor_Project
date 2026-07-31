package com.google.common.collect;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.Set;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Sets$2 extends AbstractSet implements Set {
    public final /* synthetic */ java.util.Set val$set1;
    public final /* synthetic */ java.util.Set val$set2;

    public Sets$2(java.util.Set set, java.util.Set set2) {
        this.val$set1 = set;
        this.val$set2 = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.val$set1.contains(obj) && this.val$set2.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.val$set1.containsAll(collection) && this.val$set2.containsAll(collection);
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable.CC.$default$forEach(this, consumer);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return Collections.disjoint(this.val$set2, this.val$set1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new AnonymousClass1(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final Stream parallelStream() {
        Stream parallelStream = Collection.EL.parallelStream(this.val$set1);
        java.util.Set set = this.val$set2;
        Objects.requireNonNull(set);
        return parallelStream.filter(new Sets$2$$ExternalSyntheticLambda0(set, 0));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Iterator it = this.val$set1.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.val$set2.contains(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection, j$.util.Collection
    public final Stream stream() {
        Stream stream = Collection.EL.stream(this.val$set1);
        java.util.Set set = this.val$set2;
        Objects.requireNonNull(set);
        return stream.filter(new Sets$2$$ExternalSyntheticLambda0(set, 0));
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Set, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ j$.util.Spliterator spliterator() {
        return Set.CC.$default$spliterator(this);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.Sets$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends UnmodifiableIterator {
        public final /* synthetic */ int $r8$classId;
        public final Iterator itr;
        public Object next;
        public int state;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Sets$2 sets$2) {
            this();
            this.$r8$classId = 0;
            this.this$0 = sets$2;
            this.itr = sets$2.val$set1.iterator();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // java.util.Iterator
        public final boolean hasNext() {
            Object next;
            int i = this.state;
            if (i == 4) {
                Node$$ExternalSyntheticBUOutline0.m();
                return false;
            }
            int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
            if (ordinal == 0) {
                return true;
            }
            if (ordinal != 2) {
                this.state = 4;
                int i2 = this.$r8$classId;
                Object obj = null;
                Object obj2 = this.this$0;
                Iterator it = this.itr;
                switch (i2) {
                    case 0:
                        while (it.hasNext()) {
                            next = it.next();
                            if (((Sets$2) obj2).val$set2.contains(next)) {
                                obj = next;
                                break;
                            }
                        }
                        this.state = 3;
                        break;
                    default:
                        while (it.hasNext()) {
                            next = it.next();
                            if (((com.google.common.base.Predicate) obj2).apply(next)) {
                                obj = next;
                                break;
                            }
                        }
                        this.state = 3;
                        break;
                }
                this.next = obj;
                if (this.state != 3) {
                    this.state = 1;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            }
            this.state = 2;
            Object obj = this.next;
            this.next = null;
            return obj;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Iterator it, com.google.common.base.Predicate predicate) {
            this();
            this.$r8$classId = 1;
            this.itr = it;
            this.this$0 = predicate;
        }

        public AnonymousClass1() {
            this.state = 2;
        }
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }
}
