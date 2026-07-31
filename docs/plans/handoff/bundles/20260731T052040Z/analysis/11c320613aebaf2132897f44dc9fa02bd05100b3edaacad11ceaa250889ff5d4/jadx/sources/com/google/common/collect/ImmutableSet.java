package com.google.common.collect;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.Modifier;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.common.math.IntMath$1;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImmutableSet extends ImmutableCollection implements Set, j$.util.Set {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends Maps {
        public boolean forceCopy;
        public SetBuilderImpl impl = EmptySetBuilderImpl.INSTANCE;

        @Override // com.google.common.collect.Maps
        public final /* bridge */ /* synthetic */ Maps add(Object obj) {
            add$1(obj);
            return this;
        }

        public final void add$1(Object obj) {
            Objects.requireNonNull(this.impl);
            obj.getClass();
            if (this.forceCopy) {
                Objects.requireNonNull(this.impl);
                this.impl = this.impl.copy();
                this.forceCopy = false;
            }
            this.impl = this.impl.add(obj);
        }

        public final ImmutableSet build() {
            Objects.requireNonNull(this.impl);
            this.forceCopy = true;
            SetBuilderImpl review = this.impl.review();
            this.impl = review;
            return review.build();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class CachingAsList extends ImmutableSet {
        public transient ImmutableList asList;

        @Override // com.google.common.collect.ImmutableCollection
        public final ImmutableList asList() {
            ImmutableList immutableList = this.asList;
            if (immutableList != null) {
                return immutableList;
            }
            ImmutableList createAsList = createAsList();
            this.asList = createAsList;
            return createAsList;
        }

        public ImmutableList createAsList() {
            return new RegularImmutableAsList(this, toArray());
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JdkBackedSetBuilderImpl extends SetBuilderImpl {
        public final HashSet delegate;

        public JdkBackedSetBuilderImpl(SetBuilderImpl setBuilderImpl) {
            super(setBuilderImpl);
            this.delegate = new HashSet(Maps.capacity(this.distinct));
            for (int i = 0; i < this.distinct; i++) {
                HashSet hashSet = this.delegate;
                Object obj = ((Object[]) this.dedupedElements)[i];
                Objects.requireNonNull(obj);
                hashSet.add(obj);
            }
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl add(Object obj) {
            obj.getClass();
            if (this.delegate.add(obj)) {
                addDedupedElement(obj);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final ImmutableSet build() {
            int i = this.distinct;
            if (i == 0) {
                int i2 = ImmutableSet.$r8$clinit;
                return RegularImmutableSet.EMPTY;
            }
            if (i != 1) {
                return new JdkBackedImmutableSet(this.delegate, ImmutableList.asImmutableList(this.distinct, (Object[]) this.dedupedElements));
            }
            Object obj = ((Object[]) this.dedupedElements)[0];
            Objects.requireNonNull(obj);
            int i3 = ImmutableSet.$r8$clinit;
            return new SingletonImmutableSet(obj);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl copy() {
            return new JdkBackedSetBuilderImpl(this);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RegularSetBuilderImpl extends SetBuilderImpl {
        public int expandTableThreshold;
        public int hashCode;
        public Object[] hashTable;
        public int maxRunBeforeFallback;

        public RegularSetBuilderImpl(int i) {
            super(i, 0);
            this.hashTable = null;
            this.maxRunBeforeFallback = 0;
            this.expandTableThreshold = 0;
        }

        public static int maxRunBeforeFallback(int i) {
            int numberOfLeadingZeros;
            RoundingMode roundingMode = RoundingMode.UNNECESSARY;
            if (i <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("x (", i, ") must be > 0"));
                return 0;
            }
            switch (IntMath$1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                    if (!((i > 0) & (((i + (-1)) & i) == 0))) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                case 2:
                case 3:
                    numberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(i);
                    return numberOfLeadingZeros * 13;
                case 4:
                case 5:
                    numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i - 1);
                    return numberOfLeadingZeros * 13;
                case 6:
                case 7:
                case 8:
                    int numberOfLeadingZeros2 = Integer.numberOfLeadingZeros(i);
                    numberOfLeadingZeros = ((~(~(((-1257966797) >>> numberOfLeadingZeros2) - i))) >>> 31) + (31 - numberOfLeadingZeros2);
                    return numberOfLeadingZeros * 13;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda1.m();
                    return 0;
            }
        }

        public static Object[] rebuildHashTable(Object[] objArr, int i, int i2) {
            int i3;
            Object[] objArr2 = new Object[i];
            int i4 = i - 1;
            for (int i5 = 0; i5 < i2; i5++) {
                Object obj = objArr[i5];
                Objects.requireNonNull(obj);
                int smear = Maps.smear(obj.hashCode());
                while (true) {
                    i3 = smear & i4;
                    if (objArr2[i3] == null) {
                        break;
                    }
                    smear++;
                }
                objArr2[i3] = obj;
            }
            return objArr2;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl add(Object obj) {
            obj.getClass();
            if (this.hashTable != null) {
                return insertInHashTable(obj);
            }
            if (this.distinct == 0) {
                addDedupedElement(obj);
                return this;
            }
            ensureTableCapacity(((Object[]) this.dedupedElements).length);
            this.distinct--;
            return insertInHashTable(((Object[]) this.dedupedElements)[0]).add(obj);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final ImmutableSet build() {
            int i = this.distinct;
            if (i == 0) {
                int i2 = ImmutableSet.$r8$clinit;
                return RegularImmutableSet.EMPTY;
            }
            Object[] objArr = (Object[]) this.dedupedElements;
            if (i == 1) {
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                int i3 = ImmutableSet.$r8$clinit;
                return new SingletonImmutableSet(obj);
            }
            if (i != objArr.length) {
                objArr = Arrays.copyOf(objArr, i);
            }
            int i4 = this.hashCode;
            Object[] objArr2 = this.hashTable;
            Objects.requireNonNull(objArr2);
            return new RegularImmutableSet(i4, this.hashTable.length - 1, objArr, objArr2);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl copy() {
            RegularSetBuilderImpl regularSetBuilderImpl = new RegularSetBuilderImpl(this);
            Object[] objArr = this.hashTable;
            regularSetBuilderImpl.hashTable = objArr == null ? null : (Object[]) objArr.clone();
            regularSetBuilderImpl.maxRunBeforeFallback = this.maxRunBeforeFallback;
            regularSetBuilderImpl.expandTableThreshold = this.expandTableThreshold;
            regularSetBuilderImpl.hashCode = this.hashCode;
            return regularSetBuilderImpl;
        }

        public final void ensureTableCapacity(int i) {
            int length;
            Object[] objArr = this.hashTable;
            if (objArr == null) {
                length = ImmutableSet.chooseTableSize(i);
                this.hashTable = new Object[length];
            } else {
                if (i <= this.expandTableThreshold || objArr.length >= 1073741824) {
                    return;
                }
                length = objArr.length * 2;
                this.hashTable = rebuildHashTable((Object[]) this.dedupedElements, length, this.distinct);
            }
            this.maxRunBeforeFallback = maxRunBeforeFallback(length);
            this.expandTableThreshold = (int) (length * 0.7d);
        }

        public final SetBuilderImpl insertInHashTable(Object obj) {
            Objects.requireNonNull(this.hashTable);
            int hashCode = obj.hashCode();
            int smear = Maps.smear(hashCode);
            int length = this.hashTable.length - 1;
            for (int i = smear; i - smear < this.maxRunBeforeFallback; i++) {
                int i2 = i & length;
                Object obj2 = this.hashTable[i2];
                if (obj2 == null) {
                    addDedupedElement(obj);
                    this.hashTable[i2] = obj;
                    this.hashCode += hashCode;
                    ensureTableCapacity(this.distinct);
                    return this;
                }
                if (obj2.equals(obj)) {
                    return this;
                }
            }
            JdkBackedSetBuilderImpl jdkBackedSetBuilderImpl = new JdkBackedSetBuilderImpl(this);
            jdkBackedSetBuilderImpl.add(obj);
            return jdkBackedSetBuilderImpl;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl review() {
            if (this.hashTable != null) {
                int chooseTableSize = ImmutableSet.chooseTableSize(this.distinct);
                if (chooseTableSize * 2 < this.hashTable.length) {
                    this.hashTable = rebuildHashTable((Object[]) this.dedupedElements, chooseTableSize, this.distinct);
                    this.maxRunBeforeFallback = maxRunBeforeFallback(chooseTableSize);
                    this.expandTableThreshold = (int) (chooseTableSize * 0.7d);
                }
                Object[] objArr = this.hashTable;
                int maxRunBeforeFallback = maxRunBeforeFallback(objArr.length);
                int length = objArr.length - 1;
                int i = 0;
                int i2 = 0;
                while (i < objArr.length) {
                    if (i != i2 || objArr[i] != null) {
                        int i3 = i + maxRunBeforeFallback;
                        for (int i4 = i3 - 1; i4 >= i2; i4--) {
                            if (objArr[i4 & length] == null) {
                                i2 = i3;
                                i = i4 + 1;
                            }
                        }
                        return new JdkBackedSetBuilderImpl(this);
                    }
                    i2 = i + maxRunBeforeFallback;
                    if (objArr[(i2 - 1) & length] != null) {
                        i2 = i + 1;
                    }
                    i = i2;
                }
            }
            return this;
        }
    }

    public static int chooseTableSize(int i) {
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * 0.7d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        if (max < 1073741824) {
            return 1073741824;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("collection too large");
        return 0;
    }

    public static ImmutableSet construct(Object[] objArr, int i, int i2) {
        if (i == 0) {
            return RegularImmutableSet.EMPTY;
        }
        if (i == 1) {
            return new SingletonImmutableSet(objArr[0]);
        }
        SetBuilderImpl regularSetBuilderImpl = new RegularSetBuilderImpl(i2);
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            obj.getClass();
            regularSetBuilderImpl = regularSetBuilderImpl.add(obj);
        }
        return regularSetBuilderImpl.review().build();
    }

    public static ImmutableSet constructUnknownDuplication(int i, Object... objArr) {
        int i2;
        RoundingMode roundingMode = RoundingMode.CEILING;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("x (", i, ") must be >= 0"));
            return null;
        }
        int sqrt = (int) Math.sqrt(i);
        switch (IntMath$1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (sqrt * sqrt != i) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
            case 2:
            case 3:
                return construct(objArr, i, Math.max(4, sqrt));
            case 4:
            case 5:
                i2 = sqrt * sqrt;
                sqrt += (~(~(i2 - i))) >>> 31;
                return construct(objArr, i, Math.max(4, sqrt));
            case 6:
            case 7:
            case 8:
                i2 = (sqrt * sqrt) + sqrt;
                sqrt += (~(~(i2 - i))) >>> 31;
                return construct(objArr, i, Math.max(4, sqrt));
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return null;
        }
    }

    public static ImmutableSet copyOf(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            EnumSet copyOf = EnumSet.copyOf((EnumSet) collection);
            int size = copyOf.size();
            return size != 0 ? size != 1 ? new ImmutableEnumSet(copyOf) : new SingletonImmutableSet((Enum) Iterables.getOnlyElement(copyOf)) : RegularImmutableSet.EMPTY;
        }
        Object[] array = collection.toArray();
        return collection instanceof Set ? construct(array, array.length, array.length) : constructUnknownDuplication(array.length, array);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Maps.equalsImpl(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Maps.hashCodeImpl(this);
    }

    public boolean isHashCodeFast() {
        return this instanceof ImmutableEnumSet;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EmptySetBuilderImpl extends SetBuilderImpl {
        public static final EmptySetBuilderImpl INSTANCE = new EmptySetBuilderImpl(0, 0);

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl add(Object obj) {
            return new RegularSetBuilderImpl(4).add(obj);
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final ImmutableSet build() {
            int i = ImmutableSet.$r8$clinit;
            return RegularImmutableSet.EMPTY;
        }

        @Override // com.google.common.collect.ImmutableSet.SetBuilderImpl
        public final SetBuilderImpl copy() {
            return this;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SetBuilderImpl {
        public Object dedupedElements;
        public int distinct;

        public SetBuilderImpl(int i, int i2) {
            switch (i2) {
                case 1:
                    this.distinct = i;
                    break;
                default:
                    this.dedupedElements = new Object[i];
                    this.distinct = 0;
                    break;
            }
        }

        public abstract SetBuilderImpl add(Object obj);

        public void addDedupedElement(Object obj) {
            int i = this.distinct + 1;
            Object[] objArr = (Object[]) this.dedupedElements;
            if (i > objArr.length) {
                this.dedupedElements = Arrays.copyOf((Object[]) this.dedupedElements, Maps.expandedCapacity(objArr.length, i));
            }
            Object[] objArr2 = (Object[]) this.dedupedElements;
            int i2 = this.distinct;
            this.distinct = i2 + 1;
            objArr2[i2] = obj;
        }

        public abstract ImmutableSet build();

        public abstract SetBuilderImpl copy();

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list);

        public abstract CardView.AnonymousClass1 onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, CardView.AnonymousClass1 anonymousClass1);

        public SetBuilderImpl(SetBuilderImpl setBuilderImpl) {
            Object[] objArr = (Object[]) setBuilderImpl.dedupedElements;
            this.dedupedElements = Arrays.copyOf(objArr, objArr.length);
            this.distinct = setBuilderImpl.distinct;
        }

        public SetBuilderImpl review() {
            return this;
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }
    }
}
