package com.google.common.collect;

import java.util.Comparator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ComparisonChain {
    public static final AnonymousClass1 ACTIVE = new AnonymousClass1();
    public static final InactiveComparisonChain LESS = new InactiveComparisonChain(-1);
    public static final InactiveComparisonChain GREATER = new InactiveComparisonChain(1);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InactiveComparisonChain extends ComparisonChain {
        public final int result;

        public InactiveComparisonChain(int i) {
            this.result = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int result() {
            return this.result;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return this;
        }
    }

    public abstract ComparisonChain compare(int i, int i2);

    public abstract ComparisonChain compare(long j, long j2);

    public abstract ComparisonChain compare(Object obj, Object obj2, Comparator comparator);

    public abstract ComparisonChain compareFalseFirst(boolean z, boolean z2);

    public abstract ComparisonChain compareTrueFirst(boolean z, boolean z2);

    public abstract int result();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.ComparisonChain$1, reason: invalid class name */
    public final class AnonymousClass1 extends ComparisonChain {
        public static ComparisonChain classify(int i) {
            return i < 0 ? ComparisonChain.LESS : i > 0 ? ComparisonChain.GREATER : ComparisonChain.ACTIVE;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(long j, long j2) {
            return classify(j < j2 ? -1 : j > j2 ? 1 : 0);
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return classify(z == z2 ? 0 : z ? 1 : -1);
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return classify(z2 == z ? 0 : z2 ? 1 : -1);
        }

        @Override // com.google.common.collect.ComparisonChain
        public final int result() {
            return 0;
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(int i, int i2) {
            return classify(i < i2 ? -1 : i > i2 ? 1 : 0);
        }

        @Override // com.google.common.collect.ComparisonChain
        public final ComparisonChain compare(Object obj, Object obj2, Comparator comparator) {
            return classify(comparator.compare(obj, obj2));
        }
    }
}
