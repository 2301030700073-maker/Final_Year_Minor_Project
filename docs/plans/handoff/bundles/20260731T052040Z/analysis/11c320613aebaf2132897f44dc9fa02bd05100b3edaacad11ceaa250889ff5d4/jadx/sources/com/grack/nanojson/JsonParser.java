package com.grack.nanojson;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.view.ViewCompat;
import coil3.Image;
import coil3.UriKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.request.ErrorResult;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.size.Scale;
import coil3.target.ImageViewTarget;
import coil3.transition.CrossfadeDrawable;
import coil3.transition.Transition;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.functions.Function4;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Protocol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* loaded from: classes.dex */
public final class JsonParser implements Transition {
    public final /* synthetic */ int $r8$classId;
    public int token;
    public Object tokener;
    public Object value;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ce, code lost:
    
        if (r9 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JsonParser(kotlin.ranges.IntRange r13, androidx.compose.foundation.lazy.layout.LazyLayoutKt r14) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonParser.<init>(kotlin.ranges.IntRange, androidx.compose.foundation.lazy.layout.LazyLayoutKt):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e7, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01df, code lost:
    
        if (r13.size() <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e1, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e8, code lost:
    
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01fa, code lost:
    
        if (r11 == 1) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01fd, code lost:
    
        if (r11 == 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01ff, code lost:
    
        r1 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0205, code lost:
    
        if (r10 == 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0207, code lost:
    
        if (r10 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0209, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0220, code lost:
    
        r11 = new android.graphics.LinearGradient(r21, r22, r26, r27, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0261, code lost:
    
        return new com.grack.nanojson.JsonParser(r11, (android.content.res.ColorStateList) null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x021a, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x021d, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0224, code lost:
    
        r11 = new android.graphics.SweepGradient(r8, r9, r0.tmpLocation, r0.tmpMatrix);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0232, code lost:
    
        if (r25 <= 0.0f) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0234, code lost:
    
        r1 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x023b, code lost:
    
        if (r10 == 1) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023e, code lost:
    
        if (r10 == 2) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0240, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0255, code lost:
    
        r11 = new android.graphics.RadialGradient(r8, r9, r25, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x024f, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0252, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0269, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ec, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ee, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r5, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f4, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.grack.nanojson.JsonParser createFromXml(android.content.res.Resources r30, int r31, android.content.res.Resources.Theme r32) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonParser.createFromXml(android.content.res.Resources, int, android.content.res.Resources$Theme):com.grack.nanojson.JsonParser");
    }

    public static ConnectionPool object() {
        return new ConnectionPool(JsonObject.class, 10);
    }

    public void addInterval(int i, LazyLayoutIntervalContent$Interval lazyLayoutIntervalContent$Interval) {
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        IntervalList$Interval intervalList$Interval = new IntervalList$Interval(this.token, i, lazyLayoutIntervalContent$Interval);
        this.token += i;
        ((MutableVector) this.value).add(intervalList$Interval);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x011d, code lost:
    
        if (r8 <= '9') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x011f, code lost:
    
        r5 = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0132, code lost:
    
        if (r8 <= '9') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0163, code lost:
    
        if (r8 != 'E') goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0170, code lost:
    
        if (r8 <= '9') goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x00e2, code lost:
    
        if (r5 == 2) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x00e5, code lost:
    
        if (r5 == 3) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x00e8, code lost:
    
        if (r5 == 5) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x00ec, code lost:
    
        if (r5 != '\b') goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0102, code lost:
    
        throw r2.createParseException(null, "Malformed number: " + ((java.lang.Object) r3), true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0103, code lost:
    
        if (r5 != 3) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0107, code lost:
    
        if (r4 != '-') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0109, code lost:
    
        r2.isDouble = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x010b, code lost:
    
        r2.fixupAfterRawBufferRead();
        r0 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0218, code lost:
    
        r2.fixupAfterRawBufferRead();
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x03a7, code lost:
    
        r0 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x03b8, code lost:
    
        r8 = r7;
        r12 = r15;
        r14 = r2.bufferLength;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x03c4, code lost:
    
        if (r10 > r14) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x03cf, code lost:
    
        r2.index = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x03d7, code lost:
    
        throw r2.createParseException(null, "EOF encountered in the middle of a string escape", false);
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x05e0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x05e5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0534 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x053b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int advanceToken(boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 1600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonParser.advanceToken(boolean, boolean):int");
    }

    public void applySupportImageTint() {
        ConnectionSpec.Builder builder;
        ImageView imageView = (ImageView) this.value;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable == null || (builder = (ConnectionSpec.Builder) this.tokener) == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, builder, imageView.getDrawableState());
    }

    public Object currentValue() {
        if (this.token >= 5) {
            return (Serializable) this.value;
        }
        throw ((JsonTokener) this.tokener).createParseException(null, "Expected JSON value, got " + this.token, true);
    }

    public IntervalList$Interval get(int i) {
        if (i < 0 || i >= this.token) {
            StringBuilder m179m = Modifier.CC.m179m("Index ", i, ", size ");
            m179m.append(this.token);
            InlineClassHelperKt.throwIndexOutOfBoundsException(m179m.toString());
        }
        IntervalList$Interval intervalList$Interval = (IntervalList$Interval) this.tokener;
        if (intervalList$Interval != null) {
            int i2 = intervalList$Interval.startIndex;
            if (i < intervalList$Interval.size + i2 && i2 <= i) {
                return intervalList$Interval;
            }
        }
        MutableVector mutableVector = (MutableVector) this.value;
        IntervalList$Interval intervalList$Interval2 = (IntervalList$Interval) mutableVector.content[LazyLayoutKt.access$binarySearch(i, mutableVector)];
        this.tokener = intervalList$Interval2;
        return intervalList$Interval2;
    }

    public int getIndex(Object obj) {
        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.value;
        int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
        if (findKeyIndex >= 0) {
            return mutableObjectIntMap.values[findKeyIndex];
        }
        return -1;
    }

    public void insert(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, boolean z3, int i7) {
        long[] jArr = (long[]) this.value;
        int i8 = this.token;
        int i9 = i8 + 3;
        this.token = i9;
        int length = jArr.length;
        if (length <= i9) {
            int max = Math.max(length * 2, i9);
            this.value = Arrays.copyOf(jArr, max);
            this.tokener = Arrays.copyOf((long[]) this.tokener, max);
        }
        long[] jArr2 = (long[]) this.value;
        jArr2[i8] = (i2 << 32) | (i3 & 4294967295L);
        jArr2[i8 + 1] = (i4 << 32) | (i5 & 4294967295L);
        int i10 = i6 & 33554431;
        jArr2[i8 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (Math.min(0, AnalyticsListener.EVENT_DRM_KEYS_LOADED) << 50) | (i10 << 25) | (i & 33554431);
        if (i6 < 0) {
            return;
        }
        for (int i11 = i7 != -1 ? i7 : i8 - 3; i11 >= 0; i11 -= 3) {
            int i12 = i11 + 2;
            long j = jArr2[i12];
            if ((((int) j) & 33554431) == i10) {
                int i13 = (i8 - i11) / 3;
                int i14 = RectListKt.$r8$clinit;
                jArr2[i12] = (Math.min(i13, AnalyticsListener.EVENT_DRM_KEYS_LOADED) << 50) | (j & (-1151795604700004353L));
                return;
            }
        }
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return ((Shader) this.value) == null && (colorStateList = (ColorStateList) this.tokener) != null && colorStateList.isStateful();
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.value;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.AppCompatImageView;
        ProcessFinisher obtainStyledAttributes = ProcessFinisher.obtainStyledAttributes(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.config;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.config, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = Cookie.Companion.getDrawable(imageView.getContext(), resourceId)) != null) {
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

    public Object parse(Class cls) {
        JsonTokener jsonTokener = (JsonTokener) this.tokener;
        advanceToken(false, false);
        Object currentValue = currentValue();
        if (advanceToken(false, false) != 0) {
            throw jsonTokener.createParseException(null, "Expected end of input, got " + this.token, true);
        }
        if (cls == Object.class || (currentValue != null && cls.isAssignableFrom(currentValue.getClass()))) {
            return cls.cast(currentValue);
        }
        throw jsonTokener.createParseException(null, "JSON did not contain the correct type, expected " + cls.getSimpleName() + ".", true);
    }

    public void setImageResource(int i) {
        ImageView imageView = (ImageView) this.value;
        if (i != 0) {
            Drawable drawable = Cookie.Companion.getDrawable(imageView.getContext(), i);
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 10:
                StringBuilder sb = new StringBuilder();
                if (((Protocol) this.value) == Protocol.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(this.token);
                sb.append(' ');
                sb.append((String) this.tokener);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // coil3.transition.Transition
    public void transition() {
        ImageViewTarget imageViewTarget = (ImageViewTarget) this.value;
        Drawable drawable = imageViewTarget.view.getDrawable();
        ImageResult imageResult = (ImageResult) this.tokener;
        Image image = imageResult.getImage();
        Drawable asDrawable = image != null ? UriKt.asDrawable(image, imageViewTarget.view.getResources()) : null;
        Scale scale = imageResult.getRequest().scale;
        int i = this.token;
        boolean z = imageResult instanceof SuccessResult;
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(drawable, asDrawable, scale, i, (z && ((SuccessResult) imageResult).isPlaceholderCached) ? false : true);
        if (z) {
            imageViewTarget.updateImage(UriKt.asImage(crossfadeDrawable));
        } else if (imageResult instanceof ErrorResult) {
            imageViewTarget.updateImage(UriKt.asImage(crossfadeDrawable));
        } else {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
        }
    }

    public void updateHasCallbacks(int i, boolean z) {
        int i2 = i & 33554431;
        long[] jArr = (long[]) this.value;
        int i3 = this.token;
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

    public void updateSubhierarchy(int i, long j, int i2) {
        int i3;
        char c;
        char c2;
        long[] jArr = (long[]) this.value;
        long[] jArr2 = (long[]) this.tokener;
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
            int i8 = ((int) (j2 >> 50)) & AnalyticsListener.EVENT_DRM_KEYS_LOADED;
            int i9 = i8 == 1023 ? this.token : (i8 * 3) + i7;
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
                    if ((((int) (j3 >> c2)) & AnalyticsListener.EVENT_DRM_KEYS_LOADED) > 0) {
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
        long[] jArr = (long[]) this.value;
        int i3 = this.token;
        for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
            if ((((int) jArr[i4 + 2]) & 33554431) == i2) {
                long j = jArr[i4];
                long j2 = jArr[i4 + 1];
                function4.invoke(Integer.valueOf((int) (j >> 32)), Integer.valueOf((int) j), Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) j2));
                return;
            }
        }
    }

    public JsonParser(JsonTokener jsonTokener) {
        this.$r8$classId = 0;
        this.tokener = jsonTokener;
    }

    public JsonParser(ImageViewTarget imageViewTarget, ImageResult imageResult, int i) {
        this.$r8$classId = 9;
        this.value = imageViewTarget;
        this.tokener = imageResult;
        this.token = i;
        if (i > 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("durationMillis must be > 0.");
        throw null;
    }

    public JsonParser(Protocol protocol, int i, String str) {
        this.$r8$classId = 10;
        this.value = protocol;
        this.token = i;
        this.tokener = str;
    }

    public JsonParser(ArrayList arrayList, int i, MotionEvent motionEvent) {
        this.$r8$classId = 5;
        this.value = arrayList;
        this.token = i;
        this.tokener = motionEvent;
        if (arrayList.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("changes cannot be empty");
            throw null;
        }
    }

    public JsonParser(ImageView imageView) {
        this.$r8$classId = 1;
        this.token = 0;
        this.value = imageView;
    }

    public /* synthetic */ JsonParser(int i) {
        this.$r8$classId = i;
    }

    public JsonParser(Shader shader, ColorStateList colorStateList, int i) {
        this.$r8$classId = 7;
        this.value = shader;
        this.tokener = colorStateList;
        this.token = i;
    }

    public JsonParser() {
        this.$r8$classId = 2;
        this.value = new MutableVector(new IntervalList$Interval[16]);
    }
}
