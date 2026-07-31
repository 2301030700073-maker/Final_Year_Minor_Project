package androidx.compose.ui.node;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.drm.DrmManagerClient;
import android.graphics.Path;
import android.graphics.RectF;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.IntrinsicMinMax;
import androidx.compose.ui.layout.IntrinsicWidthHeight;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.text.style.BrushStyle;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.room.Room;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.Log;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Owner {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.ui.node.Owner$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$maxIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height, i2));
            }
            return measurePolicy.mo8measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(i, 0, 13)).getHeight();
        }

        public static int $default$maxIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo8measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 7)).getWidth();
        }

        public static TextForegroundStyle $default$merge(TextForegroundStyle textForegroundStyle, TextForegroundStyle textForegroundStyle2) {
            boolean z = textForegroundStyle2 instanceof BrushStyle;
            if (!z || !(textForegroundStyle instanceof BrushStyle)) {
                return (!z || (textForegroundStyle instanceof BrushStyle)) ? (z || !(textForegroundStyle instanceof BrushStyle)) ? textForegroundStyle2.takeOrElse(new Worker$$ExternalSyntheticLambda0(textForegroundStyle, 10)) : textForegroundStyle : textForegroundStyle2;
            }
            BrushStyle brushStyle = (BrushStyle) textForegroundStyle2;
            ShaderBrush shaderBrush = brushStyle.value;
            float f = brushStyle.alpha;
            if (Float.isNaN(f)) {
                f = ((BrushStyle) textForegroundStyle).alpha;
            }
            return new BrushStyle(shaderBrush, f);
        }

        public static int $default$minIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height, i2));
            }
            return measurePolicy.mo8measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(i, 0, 13)).getHeight();
        }

        public static int $default$minIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(new DefaultIntrinsicMeasurable((Measurable) list.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width, i2));
            }
            return measurePolicy.mo8measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.Constraints$default(0, i, 7)).getWidth();
        }

        public static void $default$onPostMigrate(AutoMigrationSpec autoMigrationSpec, SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                autoMigrationSpec.onPostMigrate(((SupportSQLiteConnection) sQLiteConnection).db);
            }
        }

        /* renamed from: $default$roundToPx-0680j_4, reason: not valid java name */
        public static int m357$default$roundToPx0680j_4(Density density, float f) {
            float mo63toPx0680j_4 = density.mo63toPx0680j_4(f);
            return Float.isInfinite(mo63toPx0680j_4) ? Log.LOG_LEVEL_OFF : Math.round(mo63toPx0680j_4);
        }

        /* renamed from: $default$toDp-GaN1DYA, reason: not valid java name */
        public static float m358$default$toDpGaN1DYA(long j, Density density) {
            float m453getValueimpl;
            float fontScale;
            if (!TextUnitType.m456equalsimpl0(TextUnit.m452getTypeUIouoOA(j), 4294967296L)) {
                InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() >= 1.03f) {
                FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
                m453getValueimpl = TextUnit.m453getValueimpl(j);
                if (forScale != null) {
                    return forScale.convertSpToDp(m453getValueimpl);
                }
                fontScale = density.getFontScale();
            } else {
                m453getValueimpl = TextUnit.m453getValueimpl(j);
                fontScale = density.getFontScale();
            }
            return fontScale * m453getValueimpl;
        }

        /* renamed from: $default$toDpSize-k-rfVVM, reason: not valid java name */
        public static long m359$default$toDpSizekrfVVM(long j, Density density) {
            if (j != 9205357640488583168L) {
                return Okio.m718DpSizeYgX7TsA(density.mo60toDpu2uoSUM(Float.intBitsToFloat((int) (j >> 32))), density.mo60toDpu2uoSUM(Float.intBitsToFloat((int) (j & 4294967295L))));
            }
            return 9205357640488583168L;
        }

        /* renamed from: $default$toPx--R2X_6o, reason: not valid java name */
        public static float m360$default$toPxR2X_6o(long j, Density density) {
            if (!TextUnitType.m456equalsimpl0(TextUnit.m452getTypeUIouoOA(j), 4294967296L)) {
                InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
            }
            return density.mo63toPx0680j_4(density.mo59toDpGaN1DYA(j));
        }

        /* renamed from: $default$toSize-XkaWNTQ, reason: not valid java name */
        public static long m361$default$toSizeXkaWNTQ(long j, Density density) {
            if (j == 9205357640488583168L) {
                return 9205357640488583168L;
            }
            float mo63toPx0680j_4 = density.mo63toPx0680j_4(Float.intBitsToFloat((int) (j >> 32)));
            float mo63toPx0680j_42 = density.mo63toPx0680j_4(Float.intBitsToFloat((int) (j & 4294967295L)));
            return (Float.floatToRawIntBits(mo63toPx0680j_4) << 32) | (Float.floatToRawIntBits(mo63toPx0680j_42) & 4294967295L);
        }

        /* renamed from: $default$toSp-0xMU5do, reason: not valid java name */
        public static long m362$default$toSp0xMU5do(Density density, float f) {
            float[] fArr = FontScaleConverterFactory.CommonFontSizes;
            if (density.getFontScale() < 1.03f) {
                return MathKt.pack(4294967296L, f / density.getFontScale());
            }
            FontScaleConverter forScale = FontScaleConverterFactory.forScale(density.getFontScale());
            return MathKt.pack(4294967296L, forScale != null ? forScale.convertDpToSp(f) : f / density.getFontScale());
        }

        public static final void _applyState(int i, View view, ViewGroup viewGroup) {
            view.getClass();
            viewGroup.getClass();
            if (FragmentManager.isLoggingEnabled(2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Calling apply state");
            }
            int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
            if (ordinal == 0) {
                ViewParent parent = view.getParent();
                ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup2 != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2);
                    }
                    viewGroup2.removeView(view);
                    return;
                }
                return;
            }
            if (ordinal == 1) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                }
                ViewParent parent2 = view.getParent();
                if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup);
                    }
                    viewGroup.addView(view);
                }
                view.setVisibility(0);
                return;
            }
            if (ordinal == 2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                }
                view.setVisibility(8);
                return;
            }
            if (ordinal != 3) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
            }
            view.setVisibility(4);
        }

        public static void addRoundRect$default(AndroidPath androidPath, RoundRect roundRect) {
            if (androidPath.rectF == null) {
                androidPath.rectF = new RectF();
            }
            RectF rectF = androidPath.rectF;
            rectF.getClass();
            float f = roundRect.left;
            long j = roundRect.bottomLeftCornerRadius;
            long j2 = roundRect.bottomRightCornerRadius;
            long j3 = roundRect.topRightCornerRadius;
            long j4 = roundRect.topLeftCornerRadius;
            rectF.set(f, roundRect.top, roundRect.right, roundRect.bottom);
            if (androidPath.radii == null) {
                androidPath.radii = new float[8];
            }
            float[] fArr = androidPath.radii;
            fArr.getClass();
            fArr[0] = Float.intBitsToFloat((int) (j4 >> 32));
            fArr[1] = Float.intBitsToFloat((int) (j4 & 4294967295L));
            fArr[2] = Float.intBitsToFloat((int) (j3 >> 32));
            fArr[3] = Float.intBitsToFloat((int) (j3 & 4294967295L));
            fArr[4] = Float.intBitsToFloat((int) (j2 >> 32));
            fArr[5] = Float.intBitsToFloat((int) (j2 & 4294967295L));
            fArr[6] = Float.intBitsToFloat((int) (j >> 32));
            fArr[7] = Float.intBitsToFloat((int) (j & 4294967295L));
            Path path = androidPath.internalPath;
            RectF rectF2 = androidPath.rectF;
            rectF2.getClass();
            float[] fArr2 = androidPath.radii;
            fArr2.getClass();
            path.addRoundRect(rectF2, fArr2, Path.Direction.CCW);
        }

        /* renamed from: drawCircle-VaOC9Bg$default, reason: not valid java name */
        public static void m364drawCircleVaOC9Bg$default(LayoutNodeDrawScope layoutNodeDrawScope, long j, float f) {
            long mo265getCenterF1C5BW0 = layoutNodeDrawScope.canvasDrawScope.mo265getCenterF1C5BW0();
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
            canvasDrawScope.drawParams.canvas.mo214drawCircle9KIMszo(f, mo265getCenterF1C5BW0, CanvasDrawScope.m259configurePaint2qPWKa0$default(canvasDrawScope, j, Fill.INSTANCE, 3));
        }

        /* renamed from: drawPath-GBMwjPU$default, reason: not valid java name */
        public static /* synthetic */ void m366drawPathGBMwjPU$default(DrawScope drawScope, AndroidPath androidPath, Brush brush, float f, Stroke stroke, int i) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            float f2 = f;
            DrawStyle drawStyle = stroke;
            if ((i & 8) != 0) {
                drawStyle = Fill.INSTANCE;
            }
            drawScope.mo263drawPathGBMwjPU(androidPath, brush, f2, drawStyle, (i & 32) != 0 ? 3 : 0);
        }

        /* renamed from: drawRect-n-J9OG0$default, reason: not valid java name */
        public static void m367drawRectnJ9OG0$default(DrawScope drawScope, long j, long j2, int i) {
            if ((i & 4) != 0) {
                float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo266getSizeNHjbRc() >> 32)) - Float.intBitsToFloat((int) (0 >> 32));
                j2 = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (r13 & 4294967295L)) - Float.intBitsToFloat((int) (0 & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            }
            drawScope.mo264drawRectnJ9OG0(j, 0L, j2, Fill.INSTANCE, (i & 64) != 0 ? 3 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void m(Cursor cursor) {
            if (cursor instanceof AutoCloseable) {
                cursor.close();
                return;
            }
            if (cursor instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) cursor);
                return;
            }
            if (cursor instanceof TypedArray) {
                ((TypedArray) cursor).recycle();
                return;
            }
            if (cursor instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) cursor).release();
                return;
            }
            if (cursor instanceof MediaDrm) {
                ((MediaDrm) cursor).release();
                return;
            }
            if (cursor instanceof DrmManagerClient) {
                ((DrmManagerClient) cursor).release();
            } else if (cursor instanceof ContentProviderClient) {
                ((ContentProviderClient) cursor).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            }
        }

        public static String m$1(String str, String str2) {
            return str + str2;
        }

        public static /* synthetic */ String name(int i) {
            switch (i) {
                case 1:
                    return "NONE";
                case 2:
                    return "LEFT";
                case 3:
                    return "TOP";
                case 4:
                    return "RIGHT";
                case 5:
                    return "BOTTOM";
                case 6:
                    return "BASELINE";
                case 7:
                    return "CENTER";
                case 8:
                    return "CENTER_X";
                case 9:
                    return "CENTER_Y";
                default:
                    throw null;
            }
        }

        public static /* synthetic */ String stringValueOf$1(int i) {
            return i != 1 ? i != 2 ? i != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
        }

        public static /* synthetic */ String stringValueOf$2(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
        }

        public static String m(char c, String str, String str2) {
            return str + str2 + c;
        }

        public static String m(int i, int i2, String str) {
            return str.substring(i2, str.length() - i);
        }

        public static String m(String str, Fragment fragment, String str2) {
            return str + fragment + str2;
        }

        public static String m(String str, String str2) {
            return str + str2;
        }

        public static String m(String str, String str2, String str3) {
            return str + str2 + str3;
        }

        public static String m(String str, String str2, String str3, String str4) {
            return str + str2 + str3 + str4;
        }

        public static String m(String str, String str2, String str3, String str4, String str5) {
            return str + str2 + str3 + str4 + str5;
        }

        public static StringBuilder m(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            return sb;
        }

        public static List m(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
            Objects.requireNonNull(obj);
            arrayList.add(obj2);
            return DesugarCollections.unmodifiableList(arrayList2);
        }

        public static void m(int i, int i2, int i3, int i4, int i5) {
            Room.Key(i);
            Room.Key(i2);
            Room.Key(i3);
            Room.Key(i4);
            Room.Key(i5);
        }

        public static NullPointerException m(Throwable th, String str, Throwable th2) {
            AppKt.throwIfFatal(th);
            NullPointerException nullPointerException = new NullPointerException(str);
            nullPointerException.initCause(th2);
            return nullPointerException;
        }

        public static /* synthetic */ void m(AutoCloseable autoCloseable) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
                return;
            }
            if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1((ExecutorService) autoCloseable);
                return;
            }
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            }
            if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else if (autoCloseable instanceof ContentProviderClient) {
                ((ContentProviderClient) autoCloseable).release();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            }
        }
    }
}
