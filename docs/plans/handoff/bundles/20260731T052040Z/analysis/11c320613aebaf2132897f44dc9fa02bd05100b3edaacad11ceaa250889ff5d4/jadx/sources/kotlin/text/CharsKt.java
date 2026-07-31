package kotlin.text;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Selection;
import android.text.Spannable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.collection.MutableIntList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.concurrent.futures.DirectExecutor;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.room.Room;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.transition.Transition;
import androidx.work.impl.ToContinuation;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutionException;
import kotlin.KotlinNullPointerException;
import kotlin.Unit;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntRange;
import kotlin.uuid.SecureRandomHolder;
import kotlin.uuid.Uuid;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import okhttp3.Dispatcher;
import okio.Okio;
import org.jsoup.Jsoup;

/* loaded from: classes.dex */
public abstract class CharsKt {
    /* JADX WARN: Code restructure failed: missing block: B:135:0x028a, code lost:
    
        if (r14.changed(true) != false) goto L172;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0309 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0372  */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyList(int r38, int r39, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r40, androidx.compose.foundation.gestures.FlingBehavior r41, final androidx.compose.foundation.layout.Arrangement$Vertical r42, final androidx.compose.foundation.layout.PaddingValues r43, final androidx.compose.foundation.lazy.LazyListState r44, androidx.compose.runtime.Composer r45, final androidx.compose.ui.BiasAlignment.Horizontal r46, androidx.compose.ui.Modifier r47, kotlin.jvm.functions.Function1 r48, boolean r49) {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.CharsKt.LazyList(int, int, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.gestures.FlingBehavior, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.lazy.LazyListState, androidx.compose.runtime.Composer, androidx.compose.ui.BiasAlignment$Horizontal, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, boolean):void");
    }

    public static final String access$subarrayContentToString(Object[] objArr, int i, int i2, AbstractMutableList abstractMutableList) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == abstractMutableList) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static final void access$verify(Encoder encoder) {
        encoder.getClass();
        if ((encoder instanceof StreamingJsonEncoder ? (StreamingJsonEncoder) encoder : null) != null) {
            return;
        }
        LayoutNode$$ExternalSyntheticBUOutline0.m(Reflection.getOrCreateKotlinClass(encoder.getClass()), "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ");
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m669addimpl(MutableIntList mutableIntList, int i) {
        if (mutableIntList._size == 0 || !(mutableIntList.get(0) == i || mutableIntList.get(mutableIntList._size - 1) == i)) {
            int i2 = mutableIntList._size;
            mutableIntList.add(i);
            while (i2 > 0) {
                int i3 = ((i2 + 1) >>> 1) - 1;
                int i4 = mutableIntList.get(i3);
                if (i <= i4) {
                    break;
                }
                mutableIntList.set(i2, i4);
                i2 = i3;
            }
            mutableIntList.set(i2, i);
        }
    }

    public static int applyAlpha(int i, int i2) {
        return (i & 16777215) | (i2 << 24);
    }

    public static void applyIconTint(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                drawable.setTintList(colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
                drawable.setTintList(ColorStateList.valueOf(colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static final JsonDecoder asJsonDecoder(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        LayoutNode$$ExternalSyntheticBUOutline0.m(Reflection.getOrCreateKotlinClass(decoder.getClass()), "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ");
        return null;
    }

    public static final Object await(final ListenableFuture listenableFuture, ContinuationImpl continuationImpl) {
        try {
            if (listenableFuture.isDone()) {
                return AbstractResolvableFuture.getUninterruptibly(listenableFuture);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuationImpl));
            listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl, 1), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: androidx.concurrent.futures.ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ListenableFuture.this.cancel(false);
                    return Unit.INSTANCE;
                }
            });
            return cancellableContinuationImpl.getResult();
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
            Intrinsics.sanitizeStackTrace(kotlinNullPointerException, Intrinsics.class.getName());
            throw kotlinNullPointerException;
        }
    }

    public static void checkRadix(int i) {
        if (2 > i || i >= 37) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(new IntRange(2, 36, 1), Modifier.CC.m179m("radix ", i, " was not in valid range "));
        }
    }

    /* renamed from: computeDstSize-sEdh43o, reason: not valid java name */
    public static final long m670computeDstSizesEdh43o(int i, int i2, Size size, Scale scale, Size size2) {
        int i3;
        int i4;
        if (!Intrinsics.areEqual(size, Size.ORIGINAL)) {
            i = toPx(size.width, scale);
            i2 = toPx(size.height, scale);
        }
        Dimension dimension = size2.width;
        Dimension dimension2 = size2.height;
        if ((dimension instanceof Dimension.Pixels) && i != Integer.MIN_VALUE && i != Integer.MAX_VALUE && i > (i4 = ((Dimension.Pixels) dimension).px)) {
            i = i4;
        }
        if ((dimension2 instanceof Dimension.Pixels) && i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i3 = ((Dimension.Pixels) dimension2).px)) {
            i2 = i3;
        }
        return (i2 & 4294967295L) | (i << 32);
    }

    public static final double computeSizeMultiplier(int i, int i2, int i3, int i4, Scale scale, Size size) {
        double max;
        double d = i;
        double d2 = i3 / d;
        double d3 = i2;
        double d4 = i4 / d3;
        int ordinal = scale.ordinal();
        if (ordinal == 0) {
            max = Math.max(d2, d4);
        } else {
            if (ordinal != 1) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return 0.0d;
            }
            max = Math.min(d2, d4);
        }
        if (size.width instanceof Dimension.Pixels) {
            double d5 = ((Dimension.Pixels) r9).px / d;
            if (max > d5) {
                max = d5;
            }
        }
        if (size.height instanceof Dimension.Pixels) {
            double d6 = ((Dimension.Pixels) r9).px / d3;
            if (max > d6) {
                return d6;
            }
        }
        return max;
    }

    public static ImageView.ScaleType convertScaleType(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 5 ? i != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c);
        char upperCase2 = Character.toUpperCase(c2);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static final String generateId() {
        byte[] bArr = new byte[16];
        SecureRandomHolder.instance.nextBytes(bArr);
        byte b = (byte) (bArr[6] & 15);
        bArr[6] = b;
        bArr[6] = (byte) (b | 64);
        byte b2 = (byte) (bArr[8] & 63);
        bArr[8] = b2;
        bArr[8] = (byte) (b2 | 128);
        long longAt = Okio.getLongAt(0, bArr);
        long longAt2 = Okio.getLongAt(8, bArr);
        return ((longAt == 0 && longAt2 == 0) ? Uuid.NIL : new Uuid(longAt, longAt2)).toString();
    }

    /* renamed from: getKey-ZmokQxo, reason: not valid java name */
    public static final long m671getKeyZmokQxo(KeyEvent keyEvent) {
        return Room.Key(keyEvent.getKeyCode());
    }

    /* renamed from: getType-ZmokQxo, reason: not valid java name */
    public static final int m672getTypeZmokQxo(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            return action != 1 ? 0 : 1;
        }
        return 2;
    }

    public static final boolean hasCause(Throwable th, boolean z, Class... clsArr) {
        while (th != null) {
            for (Class cls : clsArr) {
                if (z) {
                    if (cls.isAssignableFrom(th.getClass())) {
                        return true;
                    }
                } else if (Intrinsics.areEqual(cls, th.getClass())) {
                    return true;
                }
            }
            Throwable cause = th.getCause();
            if (th == cause) {
                break;
            }
            clsArr = (Class[]) Arrays.copyOf(clsArr, clsArr.length);
            th = cause;
        }
        return false;
    }

    public static boolean isFromSource(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }

    public static boolean isWhitespace(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    /* renamed from: modulate-DxMtmZc, reason: not valid java name */
    public static final long m673modulateDxMtmZc(long j, float f) {
        long Color;
        if (Float.isNaN(f) || f >= 1.0f) {
            return j;
        }
        Color = Brush.Color(Color.m249getRedimpl(j), Color.m248getGreenimpl(j), Color.m246getBlueimpl(j), Color.m245getAlphaimpl(j) * f, Color.m247getColorSpaceimpl(j));
        return Color;
    }

    public static final boolean permitsRequestBody(String str) {
        str.getClass();
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:214:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x02c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void populate(final android.view.ViewStructure r38, androidx.compose.ui.node.LayoutNode r39, android.view.autofill.AutofillId r40, java.lang.String r41, androidx.compose.ui.spatial.RectManager r42) {
        /*
            Method dump skipped, instructions count: 1027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.CharsKt.populate(android.view.ViewStructure, androidx.compose.ui.node.LayoutNode, android.view.autofill.AutofillId, java.lang.String, androidx.compose.ui.spatial.RectManager):void");
    }

    public static void refreshIconDrawableState(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = drawable.mutate();
        mutate.setTintList(ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public static final void resetRange(Object[] objArr, int i, int i2) {
        objArr.getClass();
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static void setIconClickable(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z = onLongClickListener != null;
        boolean z2 = hasOnClickListeners || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        checkableImageButton.setImportantForAccessibility(z2 ? 1 : 2);
    }

    public static final void shareSelectedTextWithShareUtils(TextView textView) {
        CharSequence charSequence;
        CharSequence text = textView.getText();
        if (!textView.hasSelection() || text == null) {
            charSequence = null;
        } else {
            int selectionStart = textView.getSelectionStart();
            int selectionEnd = textView.getSelectionEnd();
            charSequence = selectionStart > selectionEnd ? text.subSequence(selectionEnd, selectionStart) : text.subSequence(selectionStart, selectionEnd);
        }
        if (charSequence != null && charSequence.length() != 0) {
            Transition.Impl26.shareText(textView.getContext(), "", charSequence.toString(), "");
        }
        if (text instanceof Spannable) {
            Selection.setSelection((Spannable) text, textView.getSelectionEnd());
        }
    }

    /* renamed from: takeMax-impl, reason: not valid java name */
    public static final int m674takeMaximpl(MutableIntList mutableIntList) {
        int i;
        int i2 = mutableIntList._size;
        int i3 = mutableIntList.get(0);
        while (mutableIntList._size != 0 && mutableIntList.get(0) == i3) {
            mutableIntList.set(0, mutableIntList.last());
            mutableIntList.removeAt(mutableIntList._size - 1);
            int i4 = mutableIntList._size;
            int i5 = i4 >>> 1;
            int i6 = 0;
            while (i6 < i5) {
                int i7 = mutableIntList.get(i6);
                int i8 = (i6 + 1) * 2;
                int i9 = i8 - 1;
                int i10 = mutableIntList.get(i9);
                if (i8 >= i4 || (i = mutableIntList.get(i8)) <= i10) {
                    if (i10 > i7) {
                        mutableIntList.set(i6, i10);
                        mutableIntList.set(i9, i7);
                        i6 = i9;
                    }
                } else if (i > i7) {
                    mutableIntList.set(i6, i);
                    mutableIntList.set(i8, i7);
                    i6 = i8;
                }
            }
        }
        return i3;
    }

    public static int toPx(Dimension dimension, Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).px;
        }
        int ordinal = scale.ordinal();
        if (ordinal == 0) {
            return Integer.MIN_VALUE;
        }
        if (ordinal == 1) {
            return Log.LOG_LEVEL_OFF;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return 0;
    }

    public abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    public abstract String createQuery();

    public void insert(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            BundleKt.closeFinally(prepare, null);
        } finally {
        }
    }

    public long insertAndReturnId(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return -1L;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            BundleKt.closeFinally(prepare, null);
            return DBUtil.getLastInsertedRowId(sQLiteConnection);
        } finally {
        }
    }

    public List insertAndReturnIdsList(SQLiteConnection sQLiteConnection, Collection collection) {
        sQLiteConnection.getClass();
        if (collection == null) {
            return EmptyList.INSTANCE;
        }
        ListBuilder createListBuilder = Jsoup.createListBuilder();
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            for (Object obj : collection) {
                if (obj != null) {
                    bind(prepare, obj);
                    prepare.step();
                    prepare.reset();
                    createListBuilder.add(Long.valueOf(DBUtil.getLastInsertedRowId(sQLiteConnection)));
                } else {
                    createListBuilder.add(-1L);
                }
            }
            BundleKt.closeFinally(prepare, null);
            return createListBuilder.build();
        } finally {
        }
    }

    public abstract void onFailed(Throwable th);

    public abstract void onLoaded(Dispatcher dispatcher);
}
