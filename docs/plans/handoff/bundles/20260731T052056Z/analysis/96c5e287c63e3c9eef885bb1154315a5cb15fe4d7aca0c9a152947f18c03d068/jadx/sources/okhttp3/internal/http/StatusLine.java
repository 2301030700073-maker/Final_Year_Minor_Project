package okhttp3.internal.http;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridLaneInfo$SpannedItem;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.view.ViewCompat;
import androidx.paging.FlattenedPageEventStorage;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.ConnectionSpec;
import okhttp3.Protocol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StatusLine {
    public final /* synthetic */ int $r8$classId;
    public int code;
    public Object message;
    public Object protocol;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cd, code lost:
    
        if (r9 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StatusLine(kotlin.ranges.IntRange r13, androidx.compose.foundation.lazy.layout.LazyLayoutKt r14) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.StatusLine.<init>(kotlin.ranges.IntRange, androidx.compose.foundation.lazy.layout.LazyLayoutKt):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e3, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01db, code lost:
    
        if (r13.size() <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01dd, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e4, code lost:
    
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f6, code lost:
    
        if (r11 == 1) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f9, code lost:
    
        if (r11 == 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01fb, code lost:
    
        r1 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0201, code lost:
    
        if (r10 == 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0203, code lost:
    
        if (r10 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0205, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x021c, code lost:
    
        r11 = new android.graphics.LinearGradient(r21, r22, r26, r27, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x025d, code lost:
    
        return new okhttp3.internal.http.StatusLine(r11, (android.content.res.ColorStateList) null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0216, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0219, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0220, code lost:
    
        r11 = new android.graphics.SweepGradient(r8, r9, r0.tmpLocation, r0.tmpMatrix);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x022e, code lost:
    
        if (r25 <= androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0230, code lost:
    
        r1 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0237, code lost:
    
        if (r10 == 1) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023a, code lost:
    
        if (r10 == 2) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x023c, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0251, code lost:
    
        r11 = new android.graphics.RadialGradient(r8, r9, r25, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x024b, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x024e, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0265, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e8, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ea, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r5, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f0, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okhttp3.internal.http.StatusLine createFromXml(android.content.res.Resources r30, int r31, android.content.res.Resources.Theme r32) {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.StatusLine.createFromXml(android.content.res.Resources, int, android.content.res.Resources$Theme):okhttp3.internal.http.StatusLine");
    }

    public static int searchByIndex(List list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int i4 = ((LazyStaggeredGridLaneInfo$SpannedItem) list.get(i3)).index - i;
            if (i4 < 0) {
                i2 = i3 + 1;
            } else {
                if (i4 <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public void addInterval(int i, LazyLayoutIntervalContent$Interval lazyLayoutIntervalContent$Interval) {
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        IntervalList$Interval intervalList$Interval = new IntervalList$Interval(this.code, i, lazyLayoutIntervalContent$Interval);
        this.code += i;
        ((MutableVector) this.protocol).add(intervalList$Interval);
    }

    public void applySupportImageTint() {
        ConnectionSpec.Builder builder;
        ImageView imageView = (ImageView) this.protocol;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable == null || (builder = (ConnectionSpec.Builder) this.message) == null) {
            return;
        }
        int[] drawableState = imageView.getDrawableState();
        PorterDuff.Mode mode = AppCompatDrawableManager.DEFAULT_MODE;
        ResourceManagerInternal.tintDrawable(drawable, builder, drawableState);
    }

    public boolean assignedToLane(int i, int i2) {
        int lane = getLane(i);
        return lane == i2 || lane == -1 || lane == -2;
    }

    public void ensureCapacity(int i, int i2) {
        if (i > 131072) {
            InlineClassHelperKt.throwIllegalArgumentException("Requested item capacity " + i + " is larger than max supported: 131072!");
        }
        int[] iArr = (int[]) this.protocol;
        if (iArr.length < i) {
            int length = iArr.length;
            while (length < i) {
                length *= 2;
            }
            int[] iArr2 = new int[length];
            ArraysKt___ArraysKt.copyInto$default(i2, 0, 12, (int[]) this.protocol, iArr2);
            this.protocol = iArr2;
        }
    }

    public void ensureValidIndex(int i) {
        ArrayDeque arrayDeque = (ArrayDeque) this.message;
        int i2 = this.code;
        int i3 = i - i2;
        if (i3 < 0 || i3 >= 131072) {
            int max = Math.max(i - (((int[]) this.protocol).length / 2), 0);
            this.code = max;
            int i4 = max - i2;
            int[] iArr = (int[]) this.protocol;
            if (i4 >= 0) {
                if (i4 < iArr.length) {
                    ArraysKt___ArraysKt.copyInto(0, i4, iArr.length, iArr, iArr);
                }
                int[] iArr2 = (int[]) this.protocol;
                Arrays.fill(iArr2, Math.max(0, iArr2.length - i4), ((int[]) this.protocol).length, 0);
            } else {
                int i5 = -i4;
                if (iArr.length + i5 < 131072) {
                    ensureCapacity(iArr.length + i5 + 1, i5);
                } else {
                    if (i5 < iArr.length) {
                        ArraysKt___ArraysKt.copyInto(i5, 0, iArr.length - i5, iArr, iArr);
                    }
                    int[] iArr3 = (int[]) this.protocol;
                    Arrays.fill(iArr3, 0, Math.min(iArr3.length, i5), 0);
                }
            }
        } else {
            ensureCapacity(i3 + 1, 0);
        }
        while (!arrayDeque.isEmpty() && ((LazyStaggeredGridLaneInfo$SpannedItem) arrayDeque.first()).index < this.code) {
            arrayDeque.removeFirst();
        }
        while (!arrayDeque.isEmpty() && ((LazyStaggeredGridLaneInfo$SpannedItem) arrayDeque.last()).index > this.code + ((int[]) this.protocol).length) {
            arrayDeque.removeLast();
        }
    }

    public boolean equals(Object obj) {
        switch (this.$r8$classId) {
            case 11:
                int i = this.code;
                if (obj != this) {
                    if (!ClassUtil.hasClass(obj, (Class) this.protocol) || Array.getLength(obj) != i) {
                        return false;
                    }
                    for (int i2 = 0; i2 < i; i2++) {
                        Object obj2 = Array.get(this.message, i2);
                        Object obj3 = Array.get(obj, i2);
                        if (obj2 != obj3 && obj2 != null && !obj2.equals(obj3)) {
                            return false;
                        }
                    }
                }
                return true;
            default:
                return super.equals(obj);
        }
    }

    public int findPreviousItemIndex(int i, int i2) {
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!assignedToLane(i, i2));
        return i;
    }

    public IntervalList$Interval get(int i) {
        if (i < 0 || i >= this.code) {
            StringBuilder m20m = Animation.CC.m20m(i, "Index ", ", size ");
            m20m.append(this.code);
            InlineClassHelperKt.throwIndexOutOfBoundsException(m20m.toString());
        }
        IntervalList$Interval intervalList$Interval = (IntervalList$Interval) this.message;
        if (intervalList$Interval != null) {
            int i2 = intervalList$Interval.startIndex;
            if (i < intervalList$Interval.size + i2 && i2 <= i) {
                return intervalList$Interval;
            }
        }
        MutableVector mutableVector = (MutableVector) this.protocol;
        IntervalList$Interval intervalList$Interval2 = (IntervalList$Interval) mutableVector.content[LazyLayoutKt.binarySearch(i, mutableVector)];
        this.message = intervalList$Interval2;
        return intervalList$Interval2;
    }

    public int[] getGaps(int i) {
        ArrayDeque arrayDeque = (ArrayDeque) this.message;
        LazyStaggeredGridLaneInfo$SpannedItem lazyStaggeredGridLaneInfo$SpannedItem = (LazyStaggeredGridLaneInfo$SpannedItem) CollectionsKt.getOrNull(arrayDeque, searchByIndex(arrayDeque, i));
        if (lazyStaggeredGridLaneInfo$SpannedItem != null) {
            return lazyStaggeredGridLaneInfo$SpannedItem.gaps;
        }
        return null;
    }

    public int getIndex(Object obj) {
        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.protocol;
        int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
        if (findKeyIndex >= 0) {
            return mutableObjectIntMap.values[findKeyIndex];
        }
        return -1;
    }

    public Object getKey(int i) {
        Object[] objArr = (Object[]) this.message;
        int i2 = i - this.code;
        if (i2 < 0 || i2 >= objArr.length) {
            return null;
        }
        return objArr[i2];
    }

    public int getLane(int i) {
        int i2 = this.code;
        if (i < i2) {
            return -1;
        }
        if (i >= ((int[]) this.protocol).length + i2) {
            return -1;
        }
        return r2[i - i2] - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0069 A[Catch: all -> 0x007e, TryCatch #0 {all -> 0x007e, blocks: (B:11:0x0043, B:12:0x0063, B:14:0x0069, B:16:0x0071, B:18:0x0080, B:19:0x0083), top: B:10:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable getStateAsEvents(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.paging.FlattenedPageController$getStateAsEvents$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.paging.FlattenedPageController$getStateAsEvents$1 r0 = (androidx.paging.FlattenedPageController$getStateAsEvents$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.FlattenedPageController$getStateAsEvents$1 r0 = new androidx.paging.FlattenedPageController$getStateAsEvents$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L30
            if (r2 != r3) goto L2a
            kotlinx.coroutines.sync.MutexImpl r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L43
        L2a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.message
            kotlinx.coroutines.sync.MutexImpl r8 = (kotlinx.coroutines.sync.MutexImpl) r8
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r0 = r8.lock(r0)
            if (r0 != r1) goto L42
            return r1
        L42:
            r0 = r8
        L43:
            java.lang.Object r8 = r7.protocol     // Catch: java.lang.Throwable -> L7e
            androidx.paging.FlattenedPageEventStorage r8 = (androidx.paging.FlattenedPageEventStorage) r8     // Catch: java.lang.Throwable -> L7e
            java.util.List r8 = r8.getAsEvents()     // Catch: java.lang.Throwable -> L7e
            int r7 = r7.code     // Catch: java.lang.Throwable -> L7e
            int r1 = r8.size()     // Catch: java.lang.Throwable -> L7e
            int r7 = r7 - r1
            int r7 = r7 + r3
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7e
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r8, r2)     // Catch: java.lang.Throwable -> L7e
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7e
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L7e
            r2 = 0
        L63:
            boolean r3 = r8.hasNext()     // Catch: java.lang.Throwable -> L7e
            if (r3 == 0) goto L84
            java.lang.Object r3 = r8.next()     // Catch: java.lang.Throwable -> L7e
            int r5 = r2 + 1
            if (r2 < 0) goto L80
            androidx.paging.PageEvent r3 = (androidx.paging.PageEvent) r3     // Catch: java.lang.Throwable -> L7e
            kotlin.collections.IndexedValue r6 = new kotlin.collections.IndexedValue     // Catch: java.lang.Throwable -> L7e
            int r2 = r2 + r7
            r6.<init>(r2, r3)     // Catch: java.lang.Throwable -> L7e
            r1.add(r6)     // Catch: java.lang.Throwable -> L7e
            r2 = r5
            goto L63
        L7e:
            r7 = move-exception
            goto L88
        L80:
            androidx.room.Room.throwIndexOverflow()     // Catch: java.lang.Throwable -> L7e
            throw r4     // Catch: java.lang.Throwable -> L7e
        L84:
            r0.unlock(r4)
            return r1
        L88:
            r0.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.StatusLine.getStateAsEvents(kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public void insert(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, boolean z3, int i7) {
        long[] jArr = (long[]) this.protocol;
        int i8 = this.code;
        int i9 = i8 + 3;
        this.code = i9;
        int length = jArr.length;
        if (length <= i9) {
            int max = Math.max(length * 2, i9);
            this.protocol = Arrays.copyOf(jArr, max);
            this.message = Arrays.copyOf((long[]) this.message, max);
        }
        long[] jArr2 = (long[]) this.protocol;
        jArr2[i8] = (i2 << 32) | (i3 & 4294967295L);
        jArr2[i8 + 1] = (i4 << 32) | (i5 & 4294967295L);
        int i10 = i6 & 33554431;
        jArr2[i8 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (Math.min(0, 1023) << 50) | (i10 << 25) | (i & 33554431);
        if (i6 < 0) {
            return;
        }
        for (int i11 = i7 != -1 ? i7 : i8 - 3; i11 >= 0; i11 -= 3) {
            int i12 = i11 + 2;
            long j = jArr2[i12];
            if ((((int) j) & 33554431) == i10) {
                int i13 = (i8 - i11) / 3;
                int i14 = RectListKt.$r8$clinit;
                jArr2[i12] = (Math.min(i13, 1023) << 50) | (j & (-1151795604700004353L));
                return;
            }
        }
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return ((Shader) this.protocol) == null && (colorStateList = (ColorStateList) this.message) != null && colorStateList.isStateful();
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.protocol;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.AppCompatImageView;
        SVG obtainStyledAttributes = SVG.obtainStyledAttributes(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.cssRules;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.cssRules, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = TuplesKt.getDrawable(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(obtainStyledAttributes.getColorStateList(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(DrawableUtils.parseTintMode(typedArray.getInt(3, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object record(kotlin.collections.IndexedValue r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.FlattenedPageController$record$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.FlattenedPageController$record$1 r0 = (androidx.paging.FlattenedPageController$record$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.FlattenedPageController$record$1 r0 = new androidx.paging.FlattenedPageController$record$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.MutexImpl r6 = r0.L$1
            kotlin.collections.IndexedValue r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r0
            goto L48
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r5.message
            kotlinx.coroutines.sync.MutexImpl r7 = (kotlinx.coroutines.sync.MutexImpl) r7
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = r7.lock(r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            int r0 = r6.index     // Catch: java.lang.Throwable -> L5d
            r5.code = r0     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r5 = r5.protocol     // Catch: java.lang.Throwable -> L5d
            androidx.paging.FlattenedPageEventStorage r5 = (androidx.paging.FlattenedPageEventStorage) r5     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r6 = r6.value     // Catch: java.lang.Throwable -> L5d
            androidx.paging.PageEvent r6 = (androidx.paging.PageEvent) r6     // Catch: java.lang.Throwable -> L5d
            r5.add(r6)     // Catch: java.lang.Throwable -> L5d
            r7.unlock(r4)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L5d:
            r5 = move-exception
            r7.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.StatusLine.record(kotlin.collections.IndexedValue, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void reset() {
        ArraysKt___ArraysKt.fill$default((int[]) this.protocol, 0, 0, 6);
        ((ArrayDeque) this.message).clear();
    }

    public void setImageResource(int i) {
        ImageView imageView = (ImageView) this.protocol;
        if (i != 0) {
            Drawable drawable = TuplesKt.getDrawable(imageView.getContext(), i);
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    public void setLane(int i, int i2) {
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Negative lanes are not supported");
        }
        ensureValidIndex(i);
        ((int[]) this.protocol)[i - this.code] = i2 + 1;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder();
                if (((Protocol) this.protocol) == Protocol.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(this.code);
                sb.append(' ');
                sb.append((String) this.message);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void updateHasCallbacks(int i, boolean z) {
        int i2 = i & 33554431;
        long[] jArr = (long[]) this.protocol;
        int i3 = this.code;
        for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
            int i5 = i4 + 2;
            long j = jArr[i5];
            if ((((int) j) & 33554431) == i2) {
                long j2 = 8070450532247928831L & j;
                long j3 = z ? 1L : 0L;
                jArr[i5] = j2 | (1152921504606846976L * j3) | (j3 * Long.MIN_VALUE);
                return;
            }
        }
    }

    public void updateSubhierarchy(int i, int i2, long j) {
        int i3;
        char c;
        char c2;
        long[] jArr = (long[]) this.protocol;
        long[] jArr2 = (long[]) this.message;
        jArr2[0] = j;
        int i4 = 1;
        while (i4 > 0) {
            i4--;
            long j2 = jArr2[i4];
            int i5 = 33554431;
            int i6 = ((int) j2) & 33554431;
            char c3 = 25;
            int i7 = ((int) (j2 >> 25)) & 33554431;
            char c4 = '2';
            int i8 = ((int) (j2 >> 50)) & 1023;
            int i9 = i8 == 1023 ? this.code : (i8 * 3) + i7;
            if (i7 < 0) {
                return;
            }
            while (i7 < jArr.length - 2 && i7 < i9) {
                int i10 = i7 + 2;
                long j3 = jArr[i10];
                if ((((int) (j3 >> c3)) & i5) == i6) {
                    long j4 = jArr[i7];
                    int i11 = i7 + 1;
                    i3 = i5;
                    c = c3;
                    long j5 = jArr[i11];
                    c2 = c4;
                    jArr[i7] = ((((int) j4) + i2) & 4294967295L) | ((((int) (j4 >> 32)) + i) << 32);
                    jArr[i11] = ((((int) j5) + i2) & 4294967295L) | ((((int) (j5 >> 32)) + i) << 32);
                    jArr[i10] = (((j3 >> 63) & 1) << 60) | j3;
                    if ((((int) (j3 >> c2)) & 1023) > 0) {
                        int i12 = RectListKt.$r8$clinit;
                        jArr2[i4] = ((-1125899873288193L) & j3) | (((i7 + 3) & i3) << c);
                        i4++;
                    }
                } else {
                    i3 = i5;
                    c = c3;
                    c2 = c4;
                }
                i7 += 3;
                i5 = i3;
                c3 = c;
                c4 = c2;
            }
        }
    }

    public void withRect(int i, Function4 function4) {
        int i2 = i & 33554431;
        long[] jArr = (long[]) this.protocol;
        int i3 = this.code;
        for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
            if ((((int) jArr[i4 + 2]) & 33554431) == i2) {
                long j = jArr[i4];
                long j2 = jArr[i4 + 1];
                function4.invoke(Integer.valueOf((int) (j >> 32)), Integer.valueOf((int) j), Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) j2));
                return;
            }
        }
    }

    public StatusLine(Protocol protocol, int i, String str) {
        this.$r8$classId = 0;
        protocol.getClass();
        this.protocol = protocol;
        this.code = i;
        this.message = str;
    }

    public StatusLine(ArrayList arrayList, int i, MotionEvent motionEvent) {
        this.$r8$classId = 7;
        this.protocol = arrayList;
        this.code = i;
        this.message = motionEvent;
        if (arrayList.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("changes cannot be empty");
            throw null;
        }
    }

    public StatusLine(ImageView imageView) {
        this.$r8$classId = 1;
        this.code = 0;
        this.protocol = imageView;
    }

    public /* synthetic */ StatusLine(int i, boolean z) {
        this.$r8$classId = i;
    }

    public StatusLine(Shader shader, ColorStateList colorStateList, int i) {
        this.$r8$classId = 9;
        this.protocol = shader;
        this.message = colorStateList;
        this.code = i;
    }

    public StatusLine(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 4:
                this.protocol = new int[16];
                this.message = new ArrayDeque();
                break;
            case 10:
                this.protocol = new FlattenedPageEventStorage();
                this.message = new MutexImpl();
                this.code = -1;
                break;
            default:
                this.protocol = new MutableVector(new IntervalList$Interval[16]);
                break;
        }
    }

    public StatusLine(Class cls, int i, Object obj) {
        this.$r8$classId = 11;
        this.protocol = cls;
        this.code = i;
        this.message = obj;
    }

    public StatusLine(ViewConfiguration viewConfiguration) {
        this.$r8$classId = 5;
        this.protocol = viewConfiguration;
    }
}
