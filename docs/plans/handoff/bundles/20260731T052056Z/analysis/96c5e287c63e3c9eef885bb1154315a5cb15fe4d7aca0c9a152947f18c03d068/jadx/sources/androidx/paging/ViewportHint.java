package androidx.paging;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ViewportHint {
    public final int originalPageOffsetFirst;
    public final int originalPageOffsetLast;
    public final int presentedItemsAfter;
    public final int presentedItemsBefore;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Access extends ViewportHint {
        public final int indexInPage;
        public final int pageOffset;

        public Access(int i, int i2, int i3, int i4, int i5, int i6) {
            super(i3, i4, i5, i6);
            this.pageOffset = i;
            this.indexInPage = i2;
        }

        @Override // androidx.paging.ViewportHint
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Access)) {
                return false;
            }
            Access access = (Access) obj;
            return this.pageOffset == access.pageOffset && this.indexInPage == access.indexInPage && this.presentedItemsBefore == access.presentedItemsBefore && this.presentedItemsAfter == access.presentedItemsAfter && this.originalPageOffsetFirst == access.originalPageOffsetFirst && this.originalPageOffsetLast == access.originalPageOffsetLast;
        }

        @Override // androidx.paging.ViewportHint
        public final int hashCode() {
            return super.hashCode() + this.pageOffset + this.indexInPage;
        }

        public final String toString() {
            return StringsKt__IndentKt.trimMargin$default("ViewportHint.Access(\n            |    pageOffset=" + this.pageOffset + ",\n            |    indexInPage=" + this.indexInPage + ",\n            |    presentedItemsBefore=" + this.presentedItemsBefore + ",\n            |    presentedItemsAfter=" + this.presentedItemsAfter + ",\n            |    originalPageOffsetFirst=" + this.originalPageOffsetFirst + ",\n            |    originalPageOffsetLast=" + this.originalPageOffsetLast + ",\n            |)");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Initial extends ViewportHint {
        public final String toString() {
            return StringsKt__IndentKt.trimMargin$default("ViewportHint.Initial(\n            |    presentedItemsBefore=" + this.presentedItemsBefore + ",\n            |    presentedItemsAfter=" + this.presentedItemsAfter + ",\n            |    originalPageOffsetFirst=" + this.originalPageOffsetFirst + ",\n            |    originalPageOffsetLast=" + this.originalPageOffsetLast + ",\n            |)");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ViewportHint(int i, int i2, int i3, int i4) {
        this.presentedItemsBefore = i;
        this.presentedItemsAfter = i2;
        this.originalPageOffsetFirst = i3;
        this.originalPageOffsetLast = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewportHint)) {
            return false;
        }
        ViewportHint viewportHint = (ViewportHint) obj;
        return this.presentedItemsBefore == viewportHint.presentedItemsBefore && this.presentedItemsAfter == viewportHint.presentedItemsAfter && this.originalPageOffsetFirst == viewportHint.originalPageOffsetFirst && this.originalPageOffsetLast == viewportHint.originalPageOffsetLast;
    }

    public int hashCode() {
        return this.presentedItemsBefore + this.presentedItemsAfter + this.originalPageOffsetFirst + this.originalPageOffsetLast;
    }

    public final int presentedItemsBeyondAnchor$paging_common(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot get presentedItems for loadType: REFRESH");
            return 0;
        }
        if (i == 2) {
            return this.presentedItemsBefore;
        }
        if (i == 3) {
            return this.presentedItemsAfter;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return 0;
    }
}
