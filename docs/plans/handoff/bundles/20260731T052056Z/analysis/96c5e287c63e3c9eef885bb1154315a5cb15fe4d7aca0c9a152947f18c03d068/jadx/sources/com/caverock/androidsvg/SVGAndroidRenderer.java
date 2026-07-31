package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.appcompat.widget.ThemeUtils;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.ui.unit.DpKt;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.google.gson.GsonBuilder;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.SynchronizedLazyImpl;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationLoader$WhenMappings;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinarySourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Method;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ByteValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.LongValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ShortValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.UIntValue;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Class;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Package;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.platform.ContextAwarePlatform;
import okhttp3.internal.platform.Platform;
import okio.ByteString;
import okio.InputStreamSource;
import okio.Okio__JvmOkioKt;
import okio.RealBufferedSource;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikimedia.testkitchen.instrument.Funnel;
import org.wikipedia.R;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SVGAndroidRenderer implements AnnotationAndConstantLoader, AnnotationLoader {
    public static HashSet supportedFeatures;
    public Object canvas;
    public Object document;
    public Object matrixStack;
    public Object parentStack;
    public Object state;
    public Object stateStack;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.caverock.androidsvg.SVGAndroidRenderer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment;
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap;
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin;

        static {
            int[] iArr = new int[SVG.Style.LineJoin.values().length];
            $SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin = iArr;
            try {
                iArr[SVG.Style.LineJoin.Miter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin[SVG.Style.LineJoin.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin[SVG.Style.LineJoin.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SVG.Style.LineCap.values().length];
            $SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap = iArr2;
            try {
                iArr2[SVG.Style.LineCap.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap[SVG.Style.LineCap.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap[SVG.Style.LineCap.Square.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[PreserveAspectRatio.Alignment.values().length];
            $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment = iArr3;
            try {
                iArr3[PreserveAspectRatio.Alignment.xMidYMin.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMidYMid.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMidYMax.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMaxYMin.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMaxYMid.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMaxYMax.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMinYMid.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment[PreserveAspectRatio.Alignment.xMinYMax.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MarkerPositionCalculator implements SVG.PathInterface {
        public boolean closepathReAdjustPending;
        public MarkerVector lastPos;
        public final ArrayList markers;
        public boolean normalCubic;
        public boolean startArc;
        public float startX;
        public float startY;
        public int subpathStartIndex;

        public MarkerPositionCalculator(SVGAndroidRenderer sVGAndroidRenderer, SVG.PathDefinition pathDefinition) {
            ArrayList arrayList = new ArrayList();
            this.markers = arrayList;
            this.lastPos = null;
            this.startArc = false;
            this.normalCubic = true;
            this.subpathStartIndex = -1;
            if (pathDefinition == null) {
                return;
            }
            pathDefinition.enumeratePath(this);
            if (this.closepathReAdjustPending) {
                this.lastPos.add((MarkerVector) arrayList.get(this.subpathStartIndex));
                arrayList.set(this.subpathStartIndex, this.lastPos);
                this.closepathReAdjustPending = false;
            }
            MarkerVector markerVector = this.lastPos;
            if (markerVector != null) {
                arrayList.add(markerVector);
            }
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            this.startArc = true;
            this.normalCubic = false;
            MarkerVector markerVector = this.lastPos;
            SVGAndroidRenderer.arcTo(markerVector.x, markerVector.y, f, f2, f3, z, z2, f4, f5, this);
            this.normalCubic = true;
            this.closepathReAdjustPending = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.markers.add(this.lastPos);
            lineTo(this.startX, this.startY);
            this.closepathReAdjustPending = true;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
            if (this.normalCubic || this.startArc) {
                this.lastPos.add(f, f2);
                this.markers.add(this.lastPos);
                this.startArc = false;
            }
            this.lastPos = new MarkerVector(f5, f6, f5 - f3, f6 - f4);
            this.closepathReAdjustPending = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void lineTo(float f, float f2) {
            this.lastPos.add(f, f2);
            this.markers.add(this.lastPos);
            MarkerVector markerVector = this.lastPos;
            this.lastPos = new MarkerVector(f, f2, f - markerVector.x, f2 - markerVector.y);
            this.closepathReAdjustPending = false;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void moveTo(float f, float f2) {
            boolean z = this.closepathReAdjustPending;
            ArrayList arrayList = this.markers;
            if (z) {
                this.lastPos.add((MarkerVector) arrayList.get(this.subpathStartIndex));
                arrayList.set(this.subpathStartIndex, this.lastPos);
                this.closepathReAdjustPending = false;
            }
            MarkerVector markerVector = this.lastPos;
            if (markerVector != null) {
                arrayList.add(markerVector);
            }
            this.startX = f;
            this.startY = f2;
            this.lastPos = new MarkerVector(f, f2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            this.subpathStartIndex = arrayList.size();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void quadTo(float f, float f2, float f3, float f4) {
            this.lastPos.add(f, f2);
            this.markers.add(this.lastPos);
            this.lastPos = new MarkerVector(f3, f4, f3 - f, f4 - f2);
            this.closepathReAdjustPending = false;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PathConverter implements SVG.PathInterface {
        public float lastX;
        public float lastY;
        public final Path path = new Path();

        public PathConverter(SVG.PathDefinition pathDefinition) {
            if (pathDefinition == null) {
                return;
            }
            pathDefinition.enumeratePath(this);
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            SVGAndroidRenderer.arcTo(this.lastX, this.lastY, f, f2, f3, z, z2, f4, f5, this);
            this.lastX = f4;
            this.lastY = f5;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void close() {
            this.path.close();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
            this.path.cubicTo(f, f2, f3, f4, f5, f6);
            this.lastX = f5;
            this.lastY = f6;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void lineTo(float f, float f2) {
            this.path.lineTo(f, f2);
            this.lastX = f;
            this.lastY = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void moveTo(float f, float f2) {
            this.path.moveTo(f, f2);
            this.lastX = f;
            this.lastY = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public final void quadTo(float f, float f2, float f3, float f4) {
            this.path.quadTo(f, f2, f3, f4);
            this.lastX = f3;
            this.lastY = f4;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PathTextDrawer extends PlainTextDrawer {
        public final Path path;

        public PathTextDrawer(Path path, float f) {
            super(f, RecyclerView.DECELERATION_RATE);
            this.path = path;
        }

        @Override // com.caverock.androidsvg.SVGAndroidRenderer.PlainTextDrawer, androidx.compose.ui.unit.DpKt
        public final void processText(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            if (sVGAndroidRenderer.visible()) {
                RendererState rendererState = (RendererState) sVGAndroidRenderer.state;
                if (rendererState.hasFill) {
                    ((Canvas) sVGAndroidRenderer.canvas).drawTextOnPath(str, this.path, this.x, this.y, rendererState.fillPaint);
                }
                RendererState rendererState2 = (RendererState) sVGAndroidRenderer.state;
                if (rendererState2.hasStroke) {
                    ((Canvas) sVGAndroidRenderer.canvas).drawTextOnPath(str, this.path, this.x, this.y, rendererState2.strokePaint);
                }
            }
            this.x = ((RendererState) sVGAndroidRenderer.state).fillPaint.measureText(str) + this.x;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class PlainTextDrawer extends DpKt {
        public float x;
        public float y;

        public PlainTextDrawer(float f, float f2) {
            this.x = f;
            this.y = f2;
        }

        @Override // androidx.compose.ui.unit.DpKt
        public void processText(String str) {
            SVGAndroidRenderer sVGAndroidRenderer = SVGAndroidRenderer.this;
            Canvas canvas = (Canvas) sVGAndroidRenderer.canvas;
            if (sVGAndroidRenderer.visible()) {
                RendererState rendererState = (RendererState) sVGAndroidRenderer.state;
                if (rendererState.hasFill) {
                    canvas.drawText(str, this.x, this.y, rendererState.fillPaint);
                }
                RendererState rendererState2 = (RendererState) sVGAndroidRenderer.state;
                if (rendererState2.hasStroke) {
                    canvas.drawText(str, this.x, this.y, rendererState2.strokePaint);
                }
            }
            this.x = ((RendererState) sVGAndroidRenderer.state).fillPaint.measureText(str) + this.x;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextWidthCalculator extends DpKt {
        public float x = RecyclerView.DECELERATION_RATE;

        public TextWidthCalculator() {
        }

        @Override // androidx.compose.ui.unit.DpKt
        public final void processText(String str) {
            this.x = ((RendererState) SVGAndroidRenderer.this.state).fillPaint.measureText(str) + this.x;
        }
    }

    public SVGAndroidRenderer(int i) {
        switch (i) {
            case 3:
                this.canvas = new AtomicBoolean(false);
                this.document = new CountDownLatch(1);
                this.matrixStack = "PublicSuffixDatabase.list";
                break;
            default:
                this.canvas = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                this.document = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.state = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                this.stateStack = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                this.parentStack = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.matrixStack = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public static void arcTo(float f, float f2, float f3, float f4, float f5, boolean z, boolean z2, float f6, float f7, SVG.PathInterface pathInterface) {
        if (f == f6 && f2 == f7) {
            return;
        }
        if (f3 == RecyclerView.DECELERATION_RATE || f4 == RecyclerView.DECELERATION_RATE) {
            pathInterface.lineTo(f6, f7);
            return;
        }
        float abs = Math.abs(f3);
        float abs2 = Math.abs(f4);
        double radians = Math.toRadians(f5 % 360.0d);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d = (f - f6) / 2.0d;
        double d2 = (f2 - f7) / 2.0d;
        double d3 = (sin * d2) + (cos * d);
        double d4 = (cos * d2) + ((-sin) * d);
        double d5 = abs * abs;
        double d6 = abs2 * abs2;
        double d7 = d3 * d3;
        double d8 = d4 * d4;
        double d9 = (d8 / d6) + (d7 / d5);
        if (d9 > 0.99999d) {
            double sqrt = Math.sqrt(d9) * 1.00001d;
            abs = (float) (abs * sqrt);
            abs2 = (float) (sqrt * abs2);
            d5 = abs * abs;
            d6 = abs2 * abs2;
        }
        double d10 = z == z2 ? -1.0d : 1.0d;
        double d11 = d5 * d6;
        double d12 = d5 * d8;
        double d13 = d6 * d7;
        double d14 = ((d11 - d12) - d13) / (d12 + d13);
        if (d14 < 0.0d) {
            d14 = 0.0d;
        }
        double sqrt2 = Math.sqrt(d14) * d10;
        double d15 = abs;
        double d16 = abs2;
        double d17 = ((d15 * d4) / d16) * sqrt2;
        double d18 = sqrt2 * (-((d16 * d3) / d15));
        double d19 = ((cos * d17) - (sin * d18)) + ((f + f6) / 2.0d);
        double d20 = (cos * d18) + (sin * d17) + ((f2 + f7) / 2.0d);
        double d21 = (d3 - d17) / d15;
        double d22 = (d4 - d18) / d16;
        double d23 = ((-d3) - d17) / d15;
        double d24 = ((-d4) - d18) / d16;
        double d25 = (d22 * d22) + (d21 * d21);
        double acos = Math.acos(d21 / Math.sqrt(d25)) * (d22 < 0.0d ? -1.0d : 1.0d);
        double sqrt3 = ((d22 * d24) + (d21 * d23)) / Math.sqrt(((d24 * d24) + (d23 * d23)) * d25);
        double acos2 = ((d21 * d24) - (d22 * d23) < 0.0d ? -1.0d : 1.0d) * (sqrt3 < -1.0d ? 3.141592653589793d : sqrt3 > 1.0d ? 0.0d : Math.acos(sqrt3));
        if (!z2 && acos2 > 0.0d) {
            acos2 -= 6.283185307179586d;
        } else if (z2 && acos2 < 0.0d) {
            acos2 += 6.283185307179586d;
        }
        double d26 = acos2 % 6.283185307179586d;
        double d27 = acos % 6.283185307179586d;
        int ceil = (int) Math.ceil((Math.abs(d26) * 2.0d) / 3.141592653589793d);
        double d28 = d26 / ceil;
        double d29 = d28 / 2.0d;
        double sin2 = (Math.sin(d29) * 1.3333333333333333d) / (Math.cos(d29) + 1.0d);
        int i = ceil * 6;
        float[] fArr = new float[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 < ceil) {
            double d30 = d27;
            double d31 = (i2 * d28) + d30;
            double cos2 = Math.cos(d31);
            double sin3 = Math.sin(d31);
            int i4 = i2;
            int i5 = i3;
            fArr[i5] = (float) (cos2 - (sin2 * sin3));
            fArr[i3 + 1] = (float) ((cos2 * sin2) + sin3);
            double d32 = d31 + d28;
            double cos3 = Math.cos(d32);
            double sin4 = Math.sin(d32);
            fArr[i5 + 2] = (float) ((sin2 * sin4) + cos3);
            fArr[i5 + 3] = (float) (sin4 - (sin2 * cos3));
            fArr[i5 + 4] = (float) cos3;
            i3 = i5 + 6;
            fArr[i5 + 5] = (float) sin4;
            i2 = i4 + 1;
            d27 = d30;
            ceil = ceil;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(abs, abs2);
        matrix.postRotate(f5);
        matrix.postTranslate((float) d19, (float) d20);
        matrix.mapPoints(fArr);
        fArr[i - 2] = f6;
        fArr[i - 1] = f7;
        for (int i6 = 0; i6 < i; i6 += 6) {
            pathInterface.cubicTo(fArr[i6], fArr[i6 + 1], fArr[i6 + 2], fArr[i6 + 3], fArr[i6 + 4], fArr[i6 + 5]);
        }
    }

    public static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static SVG.Box calculatePathBounds(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new SVG.Box(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
    
        if (r1 != 8) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Matrix calculateViewBoxTransform(com.caverock.androidsvg.SVG.Box r9, com.caverock.androidsvg.SVG.Box r10, com.caverock.androidsvg.PreserveAspectRatio r11) {
        /*
            android.graphics.Matrix r0 = new android.graphics.Matrix
            r0.<init>()
            if (r11 == 0) goto L91
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r1 = r11.alignment
            if (r1 != 0) goto Ld
            goto L91
        Ld:
            float r2 = r9.width
            float r3 = r10.width
            float r2 = r2 / r3
            float r3 = r9.height
            float r4 = r10.height
            float r3 = r3 / r4
            float r4 = r10.minX
            float r4 = -r4
            float r5 = r10.minY
            float r5 = -r5
            com.caverock.androidsvg.PreserveAspectRatio r6 = com.caverock.androidsvg.PreserveAspectRatio.STRETCH
            boolean r6 = r11.equals(r6)
            if (r6 == 0) goto L33
            float r10 = r9.minX
            float r9 = r9.minY
            r0.preTranslate(r10, r9)
            r0.preScale(r2, r3)
            r0.preTranslate(r4, r5)
            return r0
        L33:
            com.caverock.androidsvg.PreserveAspectRatio$Scale r11 = r11.scale
            com.caverock.androidsvg.PreserveAspectRatio$Scale r6 = com.caverock.androidsvg.PreserveAspectRatio.Scale.slice
            if (r11 != r6) goto L3e
            float r11 = java.lang.Math.max(r2, r3)
            goto L42
        L3e:
            float r11 = java.lang.Math.min(r2, r3)
        L42:
            float r2 = r9.width
            float r2 = r2 / r11
            float r3 = r9.height
            float r3 = r3 / r11
            int[] r6 = com.caverock.androidsvg.SVGAndroidRenderer.AnonymousClass1.$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment
            int r7 = r1.ordinal()
            r7 = r6[r7]
            r8 = 1073741824(0x40000000, float:2.0)
            switch(r7) {
                case 1: goto L5b;
                case 2: goto L5b;
                case 3: goto L5b;
                case 4: goto L56;
                case 5: goto L56;
                case 6: goto L56;
                default: goto L55;
            }
        L55:
            goto L60
        L56:
            float r7 = r10.width
            float r7 = r7 - r2
        L59:
            float r4 = r4 - r7
            goto L60
        L5b:
            float r7 = r10.width
            float r7 = r7 - r2
            float r7 = r7 / r8
            goto L59
        L60:
            int r1 = r1.ordinal()
            r1 = r6[r1]
            r2 = 2
            if (r1 == r2) goto L7f
            r2 = 3
            if (r1 == r2) goto L7a
            r2 = 5
            if (r1 == r2) goto L7f
            r2 = 6
            if (r1 == r2) goto L7a
            r2 = 7
            if (r1 == r2) goto L7f
            r2 = 8
            if (r1 == r2) goto L7a
            goto L84
        L7a:
            float r10 = r10.height
            float r10 = r10 - r3
        L7d:
            float r5 = r5 - r10
            goto L84
        L7f:
            float r10 = r10.height
            float r10 = r10 - r3
            float r10 = r10 / r8
            goto L7d
        L84:
            float r10 = r9.minX
            float r9 = r9.minY
            r0.preTranslate(r10, r9)
            r0.preScale(r11, r11)
            r0.preTranslate(r4, r5)
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.calculateViewBoxTransform(com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.SVG$Box, com.caverock.androidsvg.PreserveAspectRatio):android.graphics.Matrix");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r5.equals("sans-serif") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface checkGenericFont(java.lang.String r5, java.lang.Integer r6, com.caverock.androidsvg.SVG.Style.FontStyle r7) {
        /*
            com.caverock.androidsvg.SVG$Style$FontStyle r0 = com.caverock.androidsvg.SVG.Style.FontStyle.Italic
            r1 = 0
            r2 = 1
            if (r7 != r0) goto L8
            r7 = r2
            goto L9
        L8:
            r7 = r1
        L9:
            int r6 = r6.intValue()
            r0 = 500(0x1f4, float:7.0E-43)
            r3 = 2
            r4 = 3
            if (r6 <= r0) goto L19
            if (r7 == 0) goto L17
            r6 = r4
            goto L1e
        L17:
            r6 = r2
            goto L1e
        L19:
            if (r7 == 0) goto L1d
            r6 = r3
            goto L1e
        L1d:
            r6 = r1
        L1e:
            r5.getClass()
            int r7 = r5.hashCode()
            r0 = -1
            switch(r7) {
                case -1536685117: goto L57;
                case -1431958525: goto L4c;
                case -1081737434: goto L41;
                case 109326717: goto L36;
                case 1126973893: goto L2b;
                default: goto L29;
            }
        L29:
            r1 = r0
            goto L60
        L2b:
            java.lang.String r7 = "cursive"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L34
            goto L29
        L34:
            r1 = 4
            goto L60
        L36:
            java.lang.String r7 = "serif"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L3f
            goto L29
        L3f:
            r1 = r4
            goto L60
        L41:
            java.lang.String r7 = "fantasy"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L4a
            goto L29
        L4a:
            r1 = r3
            goto L60
        L4c:
            java.lang.String r7 = "monospace"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L55
            goto L29
        L55:
            r1 = r2
            goto L60
        L57:
            java.lang.String r7 = "sans-serif"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L60
            goto L29
        L60:
            switch(r1) {
                case 0: goto L81;
                case 1: goto L7a;
                case 2: goto L73;
                case 3: goto L6c;
                case 4: goto L65;
                default: goto L63;
            }
        L63:
            r5 = 0
            return r5
        L65:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L6c:
            android.graphics.Typeface r5 = android.graphics.Typeface.SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L73:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L7a:
            android.graphics.Typeface r5 = android.graphics.Typeface.MONOSPACE
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        L81:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.checkGenericFont(java.lang.String, java.lang.Integer, com.caverock.androidsvg.SVG$Style$FontStyle):android.graphics.Typeface");
    }

    public static int colourWithOpacity(int i, float f) {
        int i2 = 255;
        int round = Math.round(((i >> 24) & 255) * f);
        if (round < 0) {
            i2 = 0;
        } else if (round <= 255) {
            i2 = round;
        }
        return (i & 16777215) | (i2 << 24);
    }

    public static ColorStateList createButtonColorStateList(Context context, int i) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
    }

    public static void error(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    public static void fillInChainedGradientFields(SVG.GradientElement gradientElement, String str) {
        SVG.SvgElementBase resolveIRI = gradientElement.document.resolveIRI(str);
        if (resolveIRI == null) {
            Log.w("SVGAndroidRenderer", "Gradient reference '" + str + "' not found");
            return;
        }
        if (!(resolveIRI instanceof SVG.GradientElement)) {
            error("Gradient href attributes must point to other gradient elements", new Object[0]);
            return;
        }
        if (resolveIRI == gradientElement) {
            error("Circular reference in gradient href attribute '%s'", str);
            return;
        }
        SVG.GradientElement gradientElement2 = (SVG.GradientElement) resolveIRI;
        if (gradientElement.gradientUnitsAreUser == null) {
            gradientElement.gradientUnitsAreUser = gradientElement2.gradientUnitsAreUser;
        }
        if (gradientElement.gradientTransform == null) {
            gradientElement.gradientTransform = gradientElement2.gradientTransform;
        }
        if (gradientElement.spreadMethod == null) {
            gradientElement.spreadMethod = gradientElement2.spreadMethod;
        }
        if (gradientElement.children.isEmpty()) {
            gradientElement.children = gradientElement2.children;
        }
        try {
            if (gradientElement instanceof SVG.SvgLinearGradient) {
                SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) gradientElement;
                SVG.SvgLinearGradient svgLinearGradient2 = (SVG.SvgLinearGradient) resolveIRI;
                if (svgLinearGradient.x1 == null) {
                    svgLinearGradient.x1 = svgLinearGradient2.x1;
                }
                if (svgLinearGradient.y1 == null) {
                    svgLinearGradient.y1 = svgLinearGradient2.y1;
                }
                if (svgLinearGradient.x2 == null) {
                    svgLinearGradient.x2 = svgLinearGradient2.x2;
                }
                if (svgLinearGradient.y2 == null) {
                    svgLinearGradient.y2 = svgLinearGradient2.y2;
                }
            } else {
                fillInChainedGradientFields((SVG.SvgRadialGradient) gradientElement, (SVG.SvgRadialGradient) resolveIRI);
            }
        } catch (ClassCastException unused) {
        }
        String str2 = gradientElement2.href;
        if (str2 != null) {
            fillInChainedGradientFields(gradientElement, str2);
        }
    }

    public static void fillInChainedPatternFields(SVG.Pattern pattern, String str) {
        SVG.SvgElementBase resolveIRI = pattern.document.resolveIRI(str);
        if (resolveIRI == null) {
            Log.w("SVGAndroidRenderer", "Pattern reference '" + str + "' not found");
            return;
        }
        if (!(resolveIRI instanceof SVG.Pattern)) {
            error("Pattern href attributes must point to other pattern elements", new Object[0]);
            return;
        }
        if (resolveIRI == pattern) {
            error("Circular reference in pattern href attribute '%s'", str);
            return;
        }
        SVG.Pattern pattern2 = (SVG.Pattern) resolveIRI;
        if (pattern.patternUnitsAreUser == null) {
            pattern.patternUnitsAreUser = pattern2.patternUnitsAreUser;
        }
        if (pattern.patternContentUnitsAreUser == null) {
            pattern.patternContentUnitsAreUser = pattern2.patternContentUnitsAreUser;
        }
        if (pattern.patternTransform == null) {
            pattern.patternTransform = pattern2.patternTransform;
        }
        if (pattern.x == null) {
            pattern.x = pattern2.x;
        }
        if (pattern.y == null) {
            pattern.y = pattern2.y;
        }
        if (pattern.width == null) {
            pattern.width = pattern2.width;
        }
        if (pattern.height == null) {
            pattern.height = pattern2.height;
        }
        if (pattern.children.isEmpty()) {
            pattern.children = pattern2.children;
        }
        if (pattern.viewBox == null) {
            pattern.viewBox = pattern2.viewBox;
        }
        if (pattern.preserveAspectRatio == null) {
            pattern.preserveAspectRatio = pattern2.preserveAspectRatio;
        }
        String str2 = pattern2.href;
        if (str2 != null) {
            fillInChainedPatternFields(pattern, str2);
        }
    }

    public static /* synthetic */ List findClassAndLoadMemberAnnotations$default(SVGAndroidRenderer sVGAndroidRenderer, AbstractApplier abstractApplier, MemberSignature memberSignature, Boolean bool, boolean z, int i) {
        boolean z2 = (i & 4) == 0;
        if ((i & 16) != 0) {
            bool = null;
        }
        return sVGAndroidRenderer.findClassAndLoadMemberAnnotations(abstractApplier, memberSignature, z2, false, bool, (i & 32) != 0 ? false : z);
    }

    public static MemberSignature getCallableSignature(AbstractMessageLite abstractMessageLite, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, AnnotatedCallableKind annotatedCallableKind, boolean z) {
        nameResolver.getClass();
        annotatedCallableKind.getClass();
        if (abstractMessageLite instanceof ProtoBuf$Constructor) {
            ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.EXTENSION_REGISTRY;
            JvmMemberSignature$Method jvmConstructorSignature = JvmProtoBufUtil.getJvmConstructorSignature((ProtoBuf$Constructor) abstractMessageLite, nameResolver, dispatcher$promoteAndExecute$Effects);
            if (jvmConstructorSignature != null) {
                return UnsignedKt.fromJvmMemberSignature(jvmConstructorSignature);
            }
        } else if (abstractMessageLite instanceof ProtoBuf$Function) {
            ExtensionRegistryLite extensionRegistryLite2 = JvmProtoBufUtil.EXTENSION_REGISTRY;
            JvmMemberSignature$Method jvmMethodSignature = JvmProtoBufUtil.getJvmMethodSignature((ProtoBuf$Function) abstractMessageLite, nameResolver, dispatcher$promoteAndExecute$Effects);
            if (jvmMethodSignature != null) {
                return UnsignedKt.fromJvmMemberSignature(jvmMethodSignature);
            }
        } else if (abstractMessageLite instanceof ProtoBuf$Property) {
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.propertySignature;
            generatedExtension.getClass();
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) UuidKt.getExtensionOrNull((GeneratedMessageLite.ExtendableMessage) abstractMessageLite, generatedExtension);
            if (jvmPropertySignature != null) {
                int i = AbstractBinaryClassAnnotationLoader$WhenMappings.$EnumSwitchMapping$0[annotatedCallableKind.ordinal()];
                if (i != 1) {
                    if (i == 2) {
                        if ((jvmPropertySignature.bitField0_ & 8) != 8) {
                            return null;
                        }
                        JvmProtoBuf.JvmMethodSignature jvmMethodSignature2 = jvmPropertySignature.setter_;
                        jvmMethodSignature2.getClass();
                        return new MemberSignature(nameResolver.getString(jvmMethodSignature2.name_).concat(nameResolver.getString(jvmMethodSignature2.desc_)));
                    }
                    if (i == 3) {
                        return ContextsKt.getPropertySignature((ProtoBuf$Property) abstractMessageLite, nameResolver, dispatcher$promoteAndExecute$Effects, true, true, z);
                    }
                } else if ((jvmPropertySignature.bitField0_ & 4) == 4) {
                    JvmProtoBuf.JvmMethodSignature jvmMethodSignature3 = jvmPropertySignature.getter_;
                    jvmMethodSignature3.getClass();
                    return new MemberSignature(nameResolver.getString(jvmMethodSignature3.name_).concat(nameResolver.getString(jvmMethodSignature3.desc_)));
                }
            }
        }
        return null;
    }

    public static LayerDrawable getRatingBarLayerDrawable(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable drawable = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_black_48dp);
        Drawable drawable2 = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_half_black_48dp);
        if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawable;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawable2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static boolean isSpecified(SVG.Style style, long j) {
        return (j & style.specifiedFlags) != 0;
    }

    public static void setPaintColour(RendererState rendererState, boolean z, SVG.SvgPaint svgPaint) {
        int i;
        SVG.Style style = rendererState.style;
        float floatValue = (z ? style.fillOpacity : style.strokeOpacity).floatValue();
        if (svgPaint instanceof SVG.Colour) {
            i = ((SVG.Colour) svgPaint).colour;
        } else if (!(svgPaint instanceof SVG.CurrentColor)) {
            return;
        } else {
            i = rendererState.style.color.colour;
        }
        int colourWithOpacity = colourWithOpacity(i, floatValue);
        if (z) {
            rendererState.fillPaint.setColor(colourWithOpacity);
        } else {
            rendererState.strokePaint.setColor(colourWithOpacity);
        }
    }

    public static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = AppCompatDrawableManager.DEFAULT_MODE;
        }
        mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void submitInteraction$default(com.caverock.androidsvg.SVGAndroidRenderer r13, java.lang.String r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, org.wikimedia.testkitchen.context.PageData r18, java.util.Map r19, int r20) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.submitInteraction$default(com.caverock.androidsvg.SVGAndroidRenderer, java.lang.String, java.lang.String, java.lang.String, java.lang.String, org.wikimedia.testkitchen.context.PageData, java.util.Map, int):void");
    }

    public Path calculateClipPath(SVG.SvgElement svgElement, SVG.Box box) {
        Path objectToPath;
        SVG.SvgElementBase resolveIRI = svgElement.document.resolveIRI(((RendererState) this.state).style.clipPath);
        if (resolveIRI == null) {
            error("ClipPath reference '%s' not found", ((RendererState) this.state).style.clipPath);
            return null;
        }
        SVG.ClipPath clipPath = (SVG.ClipPath) resolveIRI;
        ((Stack) this.stateStack).push((RendererState) this.state);
        this.state = findInheritFromAncestorState(clipPath);
        Boolean bool = clipPath.clipPathUnitsAreUser;
        boolean z = bool == null || bool.booleanValue();
        Matrix matrix = new Matrix();
        if (!z) {
            matrix.preTranslate(box.minX, box.minY);
            matrix.preScale(box.width, box.height);
        }
        Matrix matrix2 = clipPath.transform;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        Path path = new Path();
        Iterator it = clipPath.children.iterator();
        while (it.hasNext()) {
            SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
            if ((svgObject instanceof SVG.SvgElement) && (objectToPath = objectToPath((SVG.SvgElement) svgObject, true)) != null) {
                path.op(objectToPath, Path.Op.UNION);
            }
        }
        if (((RendererState) this.state).style.clipPath != null) {
            SVG.Box box2 = clipPath.boundingBox;
            if (box2 == null) {
                box2 = calculatePathBounds(path);
                clipPath.boundingBox = box2;
            }
            Path calculateClipPath = calculateClipPath(clipPath, box2);
            if (calculateClipPath != null) {
                path.op(calculateClipPath, Path.Op.INTERSECT);
            }
        }
        path.transform(matrix);
        this.state = (RendererState) ((Stack) this.stateStack).pop();
        return path;
    }

    public float calculateTextWidth(SVG.TextContainer textContainer) {
        TextWidthCalculator textWidthCalculator = new TextWidthCalculator();
        enumerateTextSpans(textContainer, textWidthCalculator);
        return textWidthCalculator.x;
    }

    public void checkForClipPath(SVG.SvgElement svgElement, SVG.Box box) {
        Path calculateClipPath;
        if (((RendererState) this.state).style.clipPath == null || (calculateClipPath = calculateClipPath(svgElement, box)) == null) {
            return;
        }
        ((Canvas) this.canvas).clipPath(calculateClipPath);
    }

    public void checkForGradientsAndPatterns(SVG.SvgElement svgElement) {
        SVG.SvgPaint svgPaint = ((RendererState) this.state).style.fill;
        if (svgPaint instanceof SVG.PaintReference) {
            decodePaintReference(true, svgElement.boundingBox, (SVG.PaintReference) svgPaint);
        }
        SVG.SvgPaint svgPaint2 = ((RendererState) this.state).style.stroke;
        if (svgPaint2 instanceof SVG.PaintReference) {
            decodePaintReference(false, svgElement.boundingBox, (SVG.PaintReference) svgPaint2);
        }
    }

    public void decodePaintReference(boolean z, SVG.Box box, SVG.PaintReference paintReference) {
        float f;
        float floatValue;
        float f2;
        float f3;
        float floatValue2;
        float floatValue3;
        float floatValue4;
        float floatValue5;
        SVG.SvgElementBase resolveIRI = ((SVG) this.document).resolveIRI(paintReference.href);
        if (resolveIRI == null) {
            error("%s reference '%s' not found", z ? "Fill" : "Stroke", paintReference.href);
            SVG.SvgPaint svgPaint = paintReference.fallback;
            RendererState rendererState = (RendererState) this.state;
            if (svgPaint != null) {
                setPaintColour(rendererState, z, svgPaint);
                return;
            } else if (z) {
                rendererState.hasFill = false;
                return;
            } else {
                rendererState.hasStroke = false;
                return;
            }
        }
        boolean z2 = resolveIRI instanceof SVG.SvgLinearGradient;
        SVG.Colour colour = SVG.Colour.BLACK;
        if (z2) {
            SVG.SvgLinearGradient svgLinearGradient = (SVG.SvgLinearGradient) resolveIRI;
            String str = svgLinearGradient.href;
            if (str != null) {
                fillInChainedGradientFields(svgLinearGradient, str);
            }
            Boolean bool = svgLinearGradient.gradientUnitsAreUser;
            boolean z3 = bool != null && bool.booleanValue();
            RendererState rendererState2 = (RendererState) this.state;
            Paint paint = z ? rendererState2.fillPaint : rendererState2.strokePaint;
            if (z3) {
                SVG.Box box2 = rendererState2.viewBox;
                if (box2 == null) {
                    box2 = rendererState2.viewPort;
                }
                SVG.Length length = svgLinearGradient.x1;
                floatValue2 = length != null ? length.floatValueX(this) : 0.0f;
                SVG.Length length2 = svgLinearGradient.y1;
                floatValue3 = length2 != null ? length2.floatValueY(this) : 0.0f;
                f3 = 256.0f;
                SVG.Length length3 = svgLinearGradient.x2;
                floatValue4 = length3 != null ? length3.floatValueX(this) : box2.width;
                SVG.Length length4 = svgLinearGradient.y2;
                if (length4 != null) {
                    floatValue5 = length4.floatValueY(this);
                }
                floatValue5 = 0.0f;
            } else {
                f3 = 256.0f;
                SVG.Length length5 = svgLinearGradient.x1;
                floatValue2 = length5 != null ? length5.floatValue(this, 1.0f) : 0.0f;
                SVG.Length length6 = svgLinearGradient.y1;
                floatValue3 = length6 != null ? length6.floatValue(this, 1.0f) : 0.0f;
                SVG.Length length7 = svgLinearGradient.x2;
                floatValue4 = length7 != null ? length7.floatValue(this, 1.0f) : 1.0f;
                SVG.Length length8 = svgLinearGradient.y2;
                if (length8 != null) {
                    floatValue5 = length8.floatValue(this, 1.0f);
                }
                floatValue5 = 0.0f;
            }
            float f4 = floatValue4;
            float f5 = floatValue5;
            float f6 = floatValue2;
            float f7 = floatValue3;
            statePush();
            this.state = findInheritFromAncestorState(svgLinearGradient);
            Matrix matrix = new Matrix();
            if (!z3) {
                matrix.preTranslate(box.minX, box.minY);
                matrix.preScale(box.width, box.height);
            }
            Matrix matrix2 = svgLinearGradient.gradientTransform;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            int size = svgLinearGradient.children.size();
            if (size == 0) {
                statePop();
                RendererState rendererState3 = (RendererState) this.state;
                if (z) {
                    rendererState3.hasFill = false;
                    return;
                } else {
                    rendererState3.hasStroke = false;
                    return;
                }
            }
            int[] iArr = new int[size];
            float[] fArr = new float[size];
            Iterator it = svgLinearGradient.children.iterator();
            int i = 0;
            float f8 = -1.0f;
            while (it.hasNext()) {
                SVG.Stop stop = (SVG.Stop) ((SVG.SvgObject) it.next());
                Float f9 = stop.offset;
                float floatValue6 = f9 != null ? f9.floatValue() : 0.0f;
                if (i == 0 || floatValue6 >= f8) {
                    fArr[i] = floatValue6;
                    f8 = floatValue6;
                } else {
                    fArr[i] = f8;
                }
                statePush();
                updateStyleForElement((RendererState) this.state, stop);
                SVG.Style style = ((RendererState) this.state).style;
                SVG.Colour colour2 = (SVG.Colour) style.stopColor;
                if (colour2 == null) {
                    colour2 = colour;
                }
                iArr[i] = colourWithOpacity(colour2.colour, style.stopOpacity.floatValue());
                i++;
                statePop();
            }
            if ((f6 == f4 && f7 == f5) || size == 1) {
                statePop();
                paint.setColor(iArr[size - 1]);
                return;
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            SVG.GradientSpread gradientSpread = svgLinearGradient.spreadMethod;
            if (gradientSpread != null) {
                if (gradientSpread == SVG.GradientSpread.reflect) {
                    tileMode = Shader.TileMode.MIRROR;
                } else if (gradientSpread == SVG.GradientSpread.repeat) {
                    tileMode = Shader.TileMode.REPEAT;
                }
            }
            Shader.TileMode tileMode2 = tileMode;
            statePop();
            LinearGradient linearGradient = new LinearGradient(f6, f7, f4, f5, iArr, fArr, tileMode2);
            linearGradient.setLocalMatrix(matrix);
            paint.setShader(linearGradient);
            int floatValue7 = (int) (((RendererState) this.state).style.fillOpacity.floatValue() * f3);
            paint.setAlpha(floatValue7 >= 0 ? floatValue7 > 255 ? 255 : floatValue7 : 0);
            return;
        }
        if (!(resolveIRI instanceof SVG.SvgRadialGradient)) {
            if (resolveIRI instanceof SVG.SolidColor) {
                SVG.SolidColor solidColor = (SVG.SolidColor) resolveIRI;
                SVG.Style style2 = solidColor.baseStyle;
                if (z) {
                    if (isSpecified(style2, 2147483648L)) {
                        RendererState rendererState4 = (RendererState) this.state;
                        SVG.Style style3 = rendererState4.style;
                        SVG.SvgPaint svgPaint2 = solidColor.baseStyle.solidColor;
                        style3.fill = svgPaint2;
                        rendererState4.hasFill = svgPaint2 != null;
                    }
                    if (isSpecified(solidColor.baseStyle, 4294967296L)) {
                        ((RendererState) this.state).style.fillOpacity = solidColor.baseStyle.solidOpacity;
                    }
                    if (isSpecified(solidColor.baseStyle, 6442450944L)) {
                        RendererState rendererState5 = (RendererState) this.state;
                        setPaintColour(rendererState5, z, rendererState5.style.fill);
                        return;
                    }
                    return;
                }
                if (isSpecified(style2, 2147483648L)) {
                    RendererState rendererState6 = (RendererState) this.state;
                    SVG.Style style4 = rendererState6.style;
                    SVG.SvgPaint svgPaint3 = solidColor.baseStyle.solidColor;
                    style4.stroke = svgPaint3;
                    rendererState6.hasStroke = svgPaint3 != null;
                }
                if (isSpecified(solidColor.baseStyle, 4294967296L)) {
                    ((RendererState) this.state).style.strokeOpacity = solidColor.baseStyle.solidOpacity;
                }
                if (isSpecified(solidColor.baseStyle, 6442450944L)) {
                    RendererState rendererState7 = (RendererState) this.state;
                    setPaintColour(rendererState7, z, rendererState7.style.stroke);
                    return;
                }
                return;
            }
            return;
        }
        SVG.SvgRadialGradient svgRadialGradient = (SVG.SvgRadialGradient) resolveIRI;
        String str2 = svgRadialGradient.href;
        if (str2 != null) {
            fillInChainedGradientFields(svgRadialGradient, str2);
        }
        Boolean bool2 = svgRadialGradient.gradientUnitsAreUser;
        boolean z4 = bool2 != null && bool2.booleanValue();
        RendererState rendererState8 = (RendererState) this.state;
        Paint paint2 = z ? rendererState8.fillPaint : rendererState8.strokePaint;
        if (z4) {
            SVG.Length length9 = new SVG.Length(50.0f, SVG.Unit.percent);
            SVG.Length length10 = svgRadialGradient.cx;
            float floatValueX = length10 != null ? length10.floatValueX(this) : length9.floatValueX(this);
            SVG.Length length11 = svgRadialGradient.cy;
            float floatValueY = length11 != null ? length11.floatValueY(this) : length9.floatValueY(this);
            SVG.Length length12 = svgRadialGradient.r;
            floatValue = length12 != null ? length12.floatValue(this) : length9.floatValue(this);
            f = floatValueX;
            f2 = floatValueY;
        } else {
            SVG.Length length13 = svgRadialGradient.cx;
            float floatValue8 = length13 != null ? length13.floatValue(this, 1.0f) : 0.5f;
            SVG.Length length14 = svgRadialGradient.cy;
            float floatValue9 = length14 != null ? length14.floatValue(this, 1.0f) : 0.5f;
            SVG.Length length15 = svgRadialGradient.r;
            f = floatValue8;
            floatValue = length15 != null ? length15.floatValue(this, 1.0f) : 0.5f;
            f2 = floatValue9;
        }
        statePush();
        this.state = findInheritFromAncestorState(svgRadialGradient);
        Matrix matrix3 = new Matrix();
        if (!z4) {
            matrix3.preTranslate(box.minX, box.minY);
            matrix3.preScale(box.width, box.height);
        }
        Matrix matrix4 = svgRadialGradient.gradientTransform;
        if (matrix4 != null) {
            matrix3.preConcat(matrix4);
        }
        int size2 = svgRadialGradient.children.size();
        if (size2 == 0) {
            statePop();
            RendererState rendererState9 = (RendererState) this.state;
            if (z) {
                rendererState9.hasFill = false;
                return;
            } else {
                rendererState9.hasStroke = false;
                return;
            }
        }
        int[] iArr2 = new int[size2];
        float[] fArr2 = new float[size2];
        Iterator it2 = svgRadialGradient.children.iterator();
        int i2 = 0;
        float f10 = -1.0f;
        while (it2.hasNext()) {
            SVG.Stop stop2 = (SVG.Stop) ((SVG.SvgObject) it2.next());
            Float f11 = stop2.offset;
            float floatValue10 = f11 != null ? f11.floatValue() : 0.0f;
            if (i2 == 0 || floatValue10 >= f10) {
                fArr2[i2] = floatValue10;
                f10 = floatValue10;
            } else {
                fArr2[i2] = f10;
            }
            statePush();
            updateStyleForElement((RendererState) this.state, stop2);
            SVG.Style style5 = ((RendererState) this.state).style;
            SVG.Colour colour3 = (SVG.Colour) style5.stopColor;
            if (colour3 == null) {
                colour3 = colour;
            }
            iArr2[i2] = colourWithOpacity(colour3.colour, style5.stopOpacity.floatValue());
            i2++;
            statePop();
        }
        if (floatValue == RecyclerView.DECELERATION_RATE || size2 == 1) {
            statePop();
            paint2.setColor(iArr2[size2 - 1]);
            return;
        }
        Shader.TileMode tileMode3 = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread2 = svgRadialGradient.spreadMethod;
        if (gradientSpread2 != null) {
            if (gradientSpread2 == SVG.GradientSpread.reflect) {
                tileMode3 = Shader.TileMode.MIRROR;
            } else if (gradientSpread2 == SVG.GradientSpread.repeat) {
                tileMode3 = Shader.TileMode.REPEAT;
            }
        }
        Shader.TileMode tileMode4 = tileMode3;
        statePop();
        RadialGradient radialGradient = new RadialGradient(f, f2, floatValue, iArr2, fArr2, tileMode4);
        radialGradient.setLocalMatrix(matrix3);
        paint2.setShader(radialGradient);
        int floatValue11 = (int) (((RendererState) this.state).style.fillOpacity.floatValue() * 256.0f);
        paint2.setAlpha(floatValue11 >= 0 ? floatValue11 > 255 ? 255 : floatValue11 : 0);
    }

    public boolean display() {
        Boolean bool = ((RendererState) this.state).style.display;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doFilledPath(com.caverock.androidsvg.SVG.SvgElement r23, android.graphics.Path r24) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.doFilledPath(com.caverock.androidsvg.SVG$SvgElement, android.graphics.Path):void");
    }

    public void doStroke(Path path) {
        RendererState rendererState = (RendererState) this.state;
        SVG.Style.VectorEffect vectorEffect = rendererState.style.vectorEffect;
        SVG.Style.VectorEffect vectorEffect2 = SVG.Style.VectorEffect.NonScalingStroke;
        Canvas canvas = (Canvas) this.canvas;
        if (vectorEffect != vectorEffect2) {
            canvas.drawPath(path, rendererState.strokePaint);
            return;
        }
        Matrix matrix = canvas.getMatrix();
        Path path2 = new Path();
        path.transform(matrix, path2);
        canvas.setMatrix(new Matrix());
        Shader shader = ((RendererState) this.state).strokePaint.getShader();
        Matrix matrix2 = new Matrix();
        if (shader != null) {
            shader.getLocalMatrix(matrix2);
            Matrix matrix3 = new Matrix(matrix2);
            matrix3.postConcat(matrix);
            shader.setLocalMatrix(matrix3);
        }
        canvas.drawPath(path2, ((RendererState) this.state).strokePaint);
        canvas.setMatrix(matrix);
        if (shader != null) {
            shader.setLocalMatrix(matrix2);
        }
    }

    public void enumerateTextSpans(SVG.TextContainer textContainer, DpKt dpKt) {
        float f;
        float f2;
        float f3;
        SVG.Style.TextAnchor anchorPosition;
        if (display()) {
            Iterator it = textContainer.children.iterator();
            boolean z = true;
            while (it.hasNext()) {
                SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
                if (svgObject instanceof SVG.TextSequence) {
                    dpKt.processText(textXMLSpaceTransform(((SVG.TextSequence) svgObject).text, z, !it.hasNext()));
                } else if (dpKt.doTextContainer((SVG.TextContainer) svgObject)) {
                    boolean z2 = svgObject instanceof SVG.TextPath;
                    float f4 = RecyclerView.DECELERATION_RATE;
                    if (z2) {
                        statePush();
                        SVG.TextPath textPath = (SVG.TextPath) svgObject;
                        updateStyleForElement((RendererState) this.state, textPath);
                        if (display() && visible()) {
                            SVG.SvgElementBase resolveIRI = textPath.document.resolveIRI(textPath.href);
                            if (resolveIRI == null) {
                                error("TextPath reference '%s' not found", textPath.href);
                            } else {
                                SVG.Path path = (SVG.Path) resolveIRI;
                                PathConverter pathConverter = new PathConverter(path.d);
                                Matrix matrix = path.transform;
                                Path path2 = pathConverter.path;
                                if (matrix != null) {
                                    path2.transform(matrix);
                                }
                                PathMeasure pathMeasure = new PathMeasure(path2, false);
                                SVG.Length length = textPath.startOffset;
                                if (length != null) {
                                    f4 = length.floatValue(this, pathMeasure.getLength());
                                }
                                SVG.Style.TextAnchor anchorPosition2 = getAnchorPosition();
                                if (anchorPosition2 != SVG.Style.TextAnchor.Start) {
                                    float calculateTextWidth = calculateTextWidth(textPath);
                                    if (anchorPosition2 == SVG.Style.TextAnchor.Middle) {
                                        calculateTextWidth /= 2.0f;
                                    }
                                    f4 -= calculateTextWidth;
                                }
                                checkForGradientsAndPatterns(textPath.textRoot);
                                boolean pushLayer = pushLayer();
                                enumerateTextSpans(textPath, new PathTextDrawer(path2, f4));
                                if (pushLayer) {
                                    popLayer(textPath.boundingBox);
                                }
                            }
                        }
                        statePop();
                    } else if (svgObject instanceof SVG.TSpan) {
                        statePush();
                        SVG.TSpan tSpan = (SVG.TSpan) svgObject;
                        updateStyleForElement((RendererState) this.state, tSpan);
                        if (display()) {
                            ArrayList arrayList = tSpan.x;
                            boolean z3 = arrayList != null && arrayList.size() > 0;
                            boolean z4 = dpKt instanceof PlainTextDrawer;
                            if (z4) {
                                float floatValueX = !z3 ? ((PlainTextDrawer) dpKt).x : ((SVG.Length) tSpan.x.get(0)).floatValueX(this);
                                ArrayList arrayList2 = tSpan.y;
                                f2 = (arrayList2 == null || arrayList2.size() == 0) ? ((PlainTextDrawer) dpKt).y : ((SVG.Length) tSpan.y.get(0)).floatValueY(this);
                                ArrayList arrayList3 = tSpan.dx;
                                f3 = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) tSpan.dx.get(0)).floatValueX(this);
                                ArrayList arrayList4 = tSpan.dy;
                                if (arrayList4 != null && arrayList4.size() != 0) {
                                    f4 = ((SVG.Length) tSpan.dy.get(0)).floatValueY(this);
                                }
                                float f5 = floatValueX;
                                f = f4;
                                f4 = f5;
                            } else {
                                f = 0.0f;
                                f2 = 0.0f;
                                f3 = 0.0f;
                            }
                            if (z3 && (anchorPosition = getAnchorPosition()) != SVG.Style.TextAnchor.Start) {
                                float calculateTextWidth2 = calculateTextWidth(tSpan);
                                if (anchorPosition == SVG.Style.TextAnchor.Middle) {
                                    calculateTextWidth2 /= 2.0f;
                                }
                                f4 -= calculateTextWidth2;
                            }
                            checkForGradientsAndPatterns(tSpan.textRoot);
                            if (z4) {
                                PlainTextDrawer plainTextDrawer = (PlainTextDrawer) dpKt;
                                plainTextDrawer.x = f4 + f3;
                                plainTextDrawer.y = f2 + f;
                            }
                            boolean pushLayer2 = pushLayer();
                            enumerateTextSpans(tSpan, dpKt);
                            if (pushLayer2) {
                                popLayer(tSpan.boundingBox);
                            }
                        }
                        statePop();
                    } else if (svgObject instanceof SVG.TRef) {
                        statePush();
                        SVG.TRef tRef = (SVG.TRef) svgObject;
                        updateStyleForElement((RendererState) this.state, tRef);
                        if (display()) {
                            checkForGradientsAndPatterns(tRef.textRoot);
                            SVG.SvgElementBase resolveIRI2 = svgObject.document.resolveIRI(tRef.href);
                            if (resolveIRI2 == null || !(resolveIRI2 instanceof SVG.TextContainer)) {
                                error("Tref reference '%s' not found", tRef.href);
                            } else {
                                StringBuilder sb = new StringBuilder();
                                extractRawText((SVG.TextContainer) resolveIRI2, sb);
                                if (sb.length() > 0) {
                                    dpKt.processText(sb.toString());
                                }
                            }
                        }
                        statePop();
                    }
                }
                z = false;
            }
        }
    }

    public void extractRawText(SVG.TextContainer textContainer, StringBuilder sb) {
        Iterator it = textContainer.children.iterator();
        boolean z = true;
        while (it.hasNext()) {
            SVG.SvgObject svgObject = (SVG.SvgObject) it.next();
            if (svgObject instanceof SVG.TextContainer) {
                extractRawText((SVG.TextContainer) svgObject, sb);
            } else if (svgObject instanceof SVG.TextSequence) {
                sb.append(textXMLSpaceTransform(((SVG.TextSequence) svgObject).text, z, !it.hasNext()));
            }
            z = false;
        }
    }

    public List findClassAndLoadMemberAnnotations(AbstractApplier abstractApplier, MemberSignature memberSignature, boolean z, boolean z2, Boolean bool, boolean z3) {
        List list;
        ReflectKotlinClass specialCaseContainerClass = getSpecialCaseContainerClass(abstractApplier, z, z2, bool, z3);
        if (specialCaseContainerClass == null) {
            if (abstractApplier instanceof ProtoContainer$Class) {
                SourceElement sourceElement = (SourceElement) ((ProtoContainer$Class) abstractApplier).stack;
                KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
                if (kotlinJvmBinarySourceElement != null) {
                    specialCaseContainerClass = kotlinJvmBinarySourceElement.binaryClass;
                }
            }
            specialCaseContainerClass = null;
        }
        return (specialCaseContainerClass == null || (list = (List) ((AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants) ((LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) this.document).invoke(specialCaseContainerClass)).memberAnnotations.get(memberSignature)) == null) ? EmptyList.INSTANCE : list;
    }

    public void findInheritFromAncestorState(SVG.SvgObject svgObject, RendererState rendererState) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (svgObject instanceof SVG.SvgElementBase) {
                arrayList.add(0, (SVG.SvgElementBase) svgObject);
            }
            Object obj = svgObject.parent;
            if (obj == null) {
                break;
            } else {
                svgObject = (SVG.SvgObject) obj;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            updateStyleForElement(rendererState, (SVG.SvgElementBase) it.next());
        }
        RendererState rendererState2 = (RendererState) this.state;
        rendererState.viewBox = rendererState2.viewBox;
        rendererState.viewPort = rendererState2.viewPort;
    }

    public SVG.Style.TextAnchor getAnchorPosition() {
        SVG.Style.TextAnchor textAnchor;
        SVG.Style style = ((RendererState) this.state).style;
        if (style.direction == SVG.Style.TextDirection.LTR || (textAnchor = style.textAnchor) == SVG.Style.TextAnchor.Middle) {
            return style.textAnchor;
        }
        SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.Start;
        return textAnchor == textAnchor2 ? SVG.Style.TextAnchor.End : textAnchor2;
    }

    public ReflectKotlinClass getSpecialCaseContainerClass(AbstractApplier abstractApplier, boolean z, boolean z2, Boolean bool, boolean z3) {
        ProtoContainer$Class protoContainer$Class;
        ProtoBuf$Class.Kind kind;
        ReflectJavaClassFinder reflectJavaClassFinder = (ReflectJavaClassFinder) this.canvas;
        abstractApplier.getClass();
        SourceElement sourceElement = (SourceElement) abstractApplier.stack;
        if (z) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + abstractApplier + ')').toString());
            }
            if (abstractApplier instanceof ProtoContainer$Class) {
                ProtoContainer$Class protoContainer$Class2 = (ProtoContainer$Class) abstractApplier;
                if (protoContainer$Class2.kind == ProtoBuf$Class.Kind.INTERFACE) {
                    return TuplesKt.findKotlinClass(reflectJavaClassFinder, protoContainer$Class2.classId.createNestedClassId(Name.identifier("DefaultImpls")), (JvmMetadataVersion) this.matrixStack);
                }
            }
            if (bool.booleanValue() && (abstractApplier instanceof ProtoContainer$Package)) {
                JvmPackagePartSource jvmPackagePartSource = sourceElement instanceof JvmPackagePartSource ? (JvmPackagePartSource) sourceElement : null;
                JvmClassName jvmClassName = jvmPackagePartSource != null ? jvmPackagePartSource.facadeClassName : null;
                if (jvmClassName != null) {
                    String internalName = jvmClassName.getInternalName();
                    internalName.getClass();
                    String replace = internalName.replace('/', '.');
                    replace.getClass();
                    return TuplesKt.findKotlinClass(reflectJavaClassFinder, ClassId.topLevel(new FqName(replace)), (JvmMetadataVersion) this.matrixStack);
                }
            }
        }
        if (z2 && (abstractApplier instanceof ProtoContainer$Class)) {
            ProtoContainer$Class protoContainer$Class3 = (ProtoContainer$Class) abstractApplier;
            if (protoContainer$Class3.kind == ProtoBuf$Class.Kind.COMPANION_OBJECT && (protoContainer$Class = protoContainer$Class3.outerClass) != null && ((kind = protoContainer$Class.kind) == ProtoBuf$Class.Kind.CLASS || kind == ProtoBuf$Class.Kind.ENUM_CLASS || (z3 && (kind == ProtoBuf$Class.Kind.INTERFACE || kind == ProtoBuf$Class.Kind.ANNOTATION_CLASS)))) {
                SourceElement sourceElement2 = (SourceElement) protoContainer$Class.stack;
                KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement2 instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement2 : null;
                if (kotlinJvmBinarySourceElement != null) {
                    return kotlinJvmBinarySourceElement.binaryClass;
                }
                return null;
            }
        }
        if (!(abstractApplier instanceof ProtoContainer$Package) || !(sourceElement instanceof JvmPackagePartSource)) {
            return null;
        }
        JvmPackagePartSource jvmPackagePartSource2 = (JvmPackagePartSource) sourceElement;
        ReflectKotlinClass reflectKotlinClass = jvmPackagePartSource2.knownJvmBinaryClass;
        return reflectKotlinClass == null ? TuplesKt.findKotlinClass(reflectJavaClassFinder, jvmPackagePartSource2.getClassId(), (JvmMetadataVersion) this.matrixStack) : reflectKotlinClass;
    }

    public List getStringList(int i) {
        String[] stringArray = ((Resources) this.canvas).getStringArray(i);
        stringArray.getClass();
        List asList = Arrays.asList(stringArray);
        asList.getClass();
        return asList;
    }

    public ColorStateList getTintListForDrawableRes(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return FileUtil.getColorStateList(context, R.color.abc_tint_edittext);
        }
        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
            return FileUtil.getColorStateList(context, R.color.abc_tint_switch_track);
        }
        if (i != R.drawable.abc_switch_thumb_material) {
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return createButtonColorStateList(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorAccent));
            }
            if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                return FileUtil.getColorStateList(context, R.color.abc_tint_spinner);
            }
            if (arrayContains((int[]) this.document, i)) {
                return ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            }
            if (arrayContains((int[]) this.parentStack, i)) {
                return FileUtil.getColorStateList(context, R.color.abc_tint_default);
            }
            if (arrayContains((int[]) this.matrixStack, i)) {
                return FileUtil.getColorStateList(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return FileUtil.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = ThemeUtils.DISABLED_STATE_SET;
            iArr[0] = iArr3;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr3, 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public int indexOfCode(String str) {
        List list = (List) ((SynchronizedLazyImpl) this.document).getValue();
        list.getClass();
        return list.indexOf(str);
    }

    public boolean isImplicitRepeatableContainer(ClassId classId) {
        ReflectKotlinClass findKotlinClass;
        if (classId.getOuterClassId() != null && Intrinsics.areEqual(classId.getShortClassName().asString(), "Container") && (findKotlinClass = TuplesKt.findKotlinClass((ReflectJavaClassFinder) this.canvas, classId, (JvmMetadataVersion) this.matrixStack)) != null) {
            LinkedHashSet linkedHashSet = SpecialJvmAnnotations.SPECIAL_ANNOTATIONS;
            Annotation[] declaredAnnotations = findKotlinClass.klass.getDeclaredAnnotations();
            declaredAnnotations.getClass();
            boolean z = false;
            for (Annotation annotation : declaredAnnotations) {
                annotation.getClass();
                if (ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation))).equals(JvmAbi.REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION)) {
                    z = true;
                }
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public InputStreamSource listSource() {
        Platform platform = Platform.platform;
        Object obj = Platform.platform;
        ContextAwarePlatform contextAwarePlatform = obj != null ? (ContextAwarePlatform) obj : null;
        Context applicationContext = contextAwarePlatform != null ? contextAwarePlatform.getApplicationContext() : null;
        AssetManager assets = applicationContext != null ? applicationContext.getAssets() : null;
        if (assets != null) {
            InputStream open = assets.open((String) this.matrixStack);
            open.getClass();
            return Okio__JvmOkioKt.source(open);
        }
        if (Build.FINGERPRINT == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        return null;
    }

    public GsonBuilder loadAnnotation(ClassId classId, SourceElement sourceElement, List list) {
        return new GsonBuilder(this, DescriptorUtilKt.findNonGenericClassAcrossDependencies((ModuleDescriptorImpl) this.state, classId, (ImageLoader$Builder) this.stateStack), classId, list, sourceElement);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    public Object loadAnnotationDefaultValue(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
        return loadConstantFromProperty(abstractApplier, protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER, kotlinType, AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1.INSTANCE$1);
    }

    public GsonBuilder loadAnnotationIfNotSpecial(ClassId classId, ReflectAnnotationSource reflectAnnotationSource, List list) {
        if (SpecialJvmAnnotations.SPECIAL_ANNOTATIONS.contains(classId)) {
            return null;
        }
        return loadAnnotation(classId, reflectAnnotationSource, list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public List loadCallableAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind) {
        annotatedCallableKind.getClass();
        if (annotatedCallableKind == AnnotatedCallableKind.PROPERTY) {
            return loadPropertyAnnotations(abstractApplier, (ProtoBuf$Property) abstractMessageLite, AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.PROPERTY);
        }
        MemberSignature callableSignature = getCallableSignature(abstractMessageLite, (NameResolver) abstractApplier.root, (Dispatcher$promoteAndExecute$Effects) abstractApplier.current, annotatedCallableKind, false);
        return callableSignature == null ? EmptyList.INSTANCE : findClassAndLoadMemberAnnotations$default(this, abstractApplier, callableSignature, null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public ArrayList loadClassAnnotations(ProtoContainer$Class protoContainer$Class) {
        protoContainer$Class.getClass();
        SourceElement sourceElement = (SourceElement) protoContainer$Class.stack;
        KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
        ReflectKotlinClass reflectKotlinClass = kotlinJvmBinarySourceElement != null ? kotlinJvmBinarySourceElement.binaryClass : null;
        if (reflectKotlinClass == null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Class for loading annotations is not found: ", protoContainer$Class.classId.asSingleFqName());
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        Annotation[] declaredAnnotations = reflectKotlinClass.klass.getDeclaredAnnotations();
        declaredAnnotations.getClass();
        for (Annotation annotation : declaredAnnotations) {
            annotation.getClass();
            Class javaClass = UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation));
            GsonBuilder loadAnnotationIfNotSpecial = loadAnnotationIfNotSpecial(ReflectClassUtilKt.getClassId(javaClass), new ReflectAnnotationSource(annotation), arrayList);
            if (loadAnnotationIfNotSpecial != null) {
                UtilsKt.processAnnotationArguments(loadAnnotationIfNotSpecial, annotation, javaClass);
            }
        }
        return arrayList;
    }

    public Object loadConstantFromProperty(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, AnnotatedCallableKind annotatedCallableKind, KotlinType kotlinType, Function2 function2) {
        Object invoke;
        ReflectKotlinClass specialCaseContainerClass = getSpecialCaseContainerClass(abstractApplier, true, true, Flags.IS_CONST.get(protoBuf$Property.flags_), JvmProtoBufUtil.isMovedFromInterfaceCompanion(protoBuf$Property));
        if (specialCaseContainerClass == null) {
            if (abstractApplier instanceof ProtoContainer$Class) {
                SourceElement sourceElement = (SourceElement) ((ProtoContainer$Class) abstractApplier).stack;
                KotlinJvmBinarySourceElement kotlinJvmBinarySourceElement = sourceElement instanceof KotlinJvmBinarySourceElement ? (KotlinJvmBinarySourceElement) sourceElement : null;
                if (kotlinJvmBinarySourceElement != null) {
                    specialCaseContainerClass = kotlinJvmBinarySourceElement.binaryClass;
                }
            }
            specialCaseContainerClass = null;
        }
        if (specialCaseContainerClass != null) {
            JvmMetadataVersion jvmMetadataVersion = specialCaseContainerClass.classHeader.metadataVersion;
            JvmMetadataVersion jvmMetadataVersion2 = DeserializedDescriptorResolver.KOTLIN_1_3_RC_METADATA_VERSION;
            jvmMetadataVersion2.getClass();
            MemberSignature callableSignature = getCallableSignature(protoBuf$Property, (NameResolver) abstractApplier.root, (Dispatcher$promoteAndExecute$Effects) abstractApplier.current, annotatedCallableKind, jvmMetadataVersion.isAtLeast(jvmMetadataVersion2.major, jvmMetadataVersion2.minor, jvmMetadataVersion2.patch));
            if (callableSignature != null && (invoke = function2.invoke(((LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) this.document).invoke(specialCaseContainerClass), callableSignature)) != null) {
                if (UnsignedTypes.isUnsignedType(kotlinType)) {
                    invoke = (ConstantValue) invoke;
                    if (invoke instanceof ByteValue) {
                        return new UIntValue(((Number) ((ByteValue) invoke).value).byteValue());
                    }
                    if (invoke instanceof ShortValue) {
                        return new UIntValue(((Number) ((ShortValue) invoke).value).shortValue());
                    }
                    if (invoke instanceof IntValue) {
                        return new UIntValue(((Number) ((IntValue) invoke).value).intValue());
                    }
                    if (invoke instanceof LongValue) {
                        return new UIntValue(((Number) ((LongValue) invoke).value).longValue());
                    }
                }
                return invoke;
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public List loadEnumEntryAnnotations(AbstractApplier abstractApplier, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        abstractApplier.getClass();
        return findClassAndLoadMemberAnnotations$default(this, abstractApplier, new MemberSignature(((NameResolver) abstractApplier.root).getString(protoBuf$EnumEntry.name_) + '#' + ClassMapperLite.mapClass(((ProtoContainer$Class) abstractApplier).classId.asString())), null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public List loadExtensionReceiverParameterAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind) {
        annotatedCallableKind.getClass();
        MemberSignature callableSignature = getCallableSignature(abstractMessageLite, (NameResolver) abstractApplier.root, (Dispatcher$promoteAndExecute$Effects) abstractApplier.current, annotatedCallableKind, false);
        return callableSignature != null ? findClassAndLoadMemberAnnotations$default(this, abstractApplier, new MemberSignature(callableSignature.signature.concat("@0")), null, false, 60) : EmptyList.INSTANCE;
    }

    public List loadPropertyAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, AbstractBinaryClassAnnotationLoader$PropertyRelatedElement abstractBinaryClassAnnotationLoader$PropertyRelatedElement) {
        MemberSignature propertySignature;
        MemberSignature propertySignature2;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) abstractApplier.current;
        Boolean bool = Flags.IS_CONST.get(protoBuf$Property.flags_);
        boolean isMovedFromInterfaceCompanion = JvmProtoBufUtil.isMovedFromInterfaceCompanion(protoBuf$Property);
        AbstractBinaryClassAnnotationLoader$PropertyRelatedElement abstractBinaryClassAnnotationLoader$PropertyRelatedElement2 = AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.PROPERTY;
        NameResolver nameResolver = (NameResolver) abstractApplier.root;
        if (abstractBinaryClassAnnotationLoader$PropertyRelatedElement == abstractBinaryClassAnnotationLoader$PropertyRelatedElement2) {
            propertySignature2 = ContextsKt.getPropertySignature(protoBuf$Property, nameResolver, dispatcher$promoteAndExecute$Effects, (r12 & 8) == 0, (r12 & 16) == 0, true);
            if (propertySignature2 != null) {
                return findClassAndLoadMemberAnnotations$default(this, abstractApplier, propertySignature2, bool, isMovedFromInterfaceCompanion, 8);
            }
        } else {
            propertySignature = ContextsKt.getPropertySignature(protoBuf$Property, nameResolver, dispatcher$promoteAndExecute$Effects, (r12 & 8) == 0, (r12 & 16) == 0, true);
            if (propertySignature != null) {
                if (StringsKt.contains(propertySignature.signature, "$delegate", false) == (abstractBinaryClassAnnotationLoader$PropertyRelatedElement == AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.DELEGATE_FIELD)) {
                    return findClassAndLoadMemberAnnotations(abstractApplier, propertySignature, true, true, bool, isMovedFromInterfaceCompanion);
                }
            }
        }
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public List loadPropertyBackingFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property) {
        return loadPropertyAnnotations(abstractApplier, protoBuf$Property, AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
    public Object loadPropertyConstant(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
        return loadConstantFromProperty(abstractApplier, protoBuf$Property, AnnotatedCallableKind.PROPERTY, kotlinType, AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1.INSTANCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public List loadPropertyDelegateFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property) {
        return loadPropertyAnnotations(abstractApplier, protoBuf$Property, AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.DELEGATE_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public ArrayList loadTypeAnnotations(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
        protoBuf$Type.getClass();
        nameResolver.getClass();
        Object extension = protoBuf$Type.getExtension(JvmProtoBuf.typeAnnotation);
        extension.getClass();
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : iterable) {
            protoBuf$Annotation.getClass();
            arrayList.add(((FormBody.Builder) this.parentStack).deserializeAnnotation(protoBuf$Annotation, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    public ArrayList loadTypeParameterAnnotations(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver) {
        protoBuf$TypeParameter.getClass();
        nameResolver.getClass();
        Object extension = protoBuf$TypeParameter.getExtension(JvmProtoBuf.typeParameterAnnotation);
        extension.getClass();
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : iterable) {
            protoBuf$Annotation.getClass();
            arrayList.add(((FormBody.Builder) this.parentStack).deserializeAnnotation(protoBuf$Annotation, nameResolver));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        if ((r11 & 64) == 64) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
    
        if (r11.isInner != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        if ((r11 & 64) == 64) goto L11;
     */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List loadValueParameterAnnotations(androidx.compose.runtime.AbstractApplier r10, kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite r11, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind r12, int r13, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter r14) {
        /*
            r9 = this;
            r12.getClass()
            java.lang.Object r14 = r10.root
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r14 = (kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver) r14
            java.lang.Object r0 = r10.current
            okhttp3.Dispatcher$promoteAndExecute$Effects r0 = (okhttp3.Dispatcher$promoteAndExecute$Effects) r0
            r1 = 0
            kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature r12 = getCallableSignature(r11, r14, r0, r12, r1)
            if (r12 == 0) goto L88
            boolean r14 = r11 instanceof kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function
            r0 = 32
            r2 = 64
            r3 = 1
            if (r14 == 0) goto L29
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r11 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function) r11
            int r11 = r11.bitField0_
            r14 = r11 & 32
            if (r14 != r0) goto L24
            goto L27
        L24:
            r11 = r11 & r2
            if (r11 != r2) goto L4e
        L27:
            r1 = r3
            goto L4e
        L29:
            boolean r14 = r11 instanceof kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property
            if (r14 == 0) goto L3a
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r11 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r11
            int r11 = r11.bitField0_
            r14 = r11 & 32
            if (r14 != r0) goto L36
            goto L39
        L36:
            r11 = r11 & r2
            if (r11 != r2) goto L4e
        L39:
            goto L27
        L3a:
            boolean r14 = r11 instanceof kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor
            if (r14 == 0) goto L70
            r11 = r10
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Class r11 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Class) r11
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$Kind r14 = r11.kind
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$Kind r0 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.Kind.ENUM_CLASS
            if (r14 != r0) goto L49
            r1 = 2
            goto L4e
        L49:
            boolean r11 = r11.isInner
            if (r11 == 0) goto L4e
            goto L27
        L4e:
            int r13 = r13 + r1
            kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature r5 = new kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r12 = r12.signature
            r11.<init>(r12)
            r11.append(r2)
            r11.append(r13)
            java.lang.String r11 = r11.toString()
            r5.<init>(r11)
            r7 = 0
            r8 = 60
            r6 = 0
            r3 = r9
            r4 = r10
            java.util.List r9 = findClassAndLoadMemberAnnotations$default(r3, r4, r5, r6, r7, r8)
            return r9
        L70:
            java.lang.UnsupportedOperationException r9 = new java.lang.UnsupportedOperationException
            java.lang.Class r10 = r11.getClass()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r12 = "Unsupported message: "
            r11.<init>(r12)
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            r9.<init>(r10)
            throw r9
        L88:
            kotlin.collections.EmptyList r9 = kotlin.collections.EmptyList.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.loadValueParameterAnnotations(androidx.compose.runtime.AbstractApplier, kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind, int, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Path makePathAndBoundingBox(com.caverock.androidsvg.SVG.Rect r20) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.makePathAndBoundingBox(com.caverock.androidsvg.SVG$Rect):android.graphics.Path");
    }

    public SVG.Box makeViewPort(SVG.Length length, SVG.Length length2, SVG.Length length3, SVG.Length length4) {
        float f = RecyclerView.DECELERATION_RATE;
        float floatValueX = length != null ? length.floatValueX(this) : 0.0f;
        if (length2 != null) {
            f = length2.floatValueY(this);
        }
        RendererState rendererState = (RendererState) this.state;
        SVG.Box box = rendererState.viewBox;
        if (box == null) {
            box = rendererState.viewPort;
        }
        return new SVG.Box(floatValueX, f, length3 != null ? length3.floatValueX(this) : box.width, length4 != null ? length4.floatValueY(this) : box.height);
    }

    public Path objectToPath(SVG.SvgElement svgElement, boolean z) {
        Path path;
        Path calculateClipPath;
        ((Stack) this.stateStack).push((RendererState) this.state);
        RendererState rendererState = new RendererState((RendererState) this.state);
        this.state = rendererState;
        updateStyleForElement(rendererState, svgElement);
        if (!display() || !visible()) {
            this.state = (RendererState) ((Stack) this.stateStack).pop();
            return null;
        }
        if (svgElement instanceof SVG.Use) {
            if (!z) {
                error("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
            }
            SVG.Use use = (SVG.Use) svgElement;
            SVG.SvgElementBase resolveIRI = svgElement.document.resolveIRI(use.href);
            if (resolveIRI == null) {
                error("Use reference '%s' not found", use.href);
                this.state = (RendererState) ((Stack) this.stateStack).pop();
                return null;
            }
            if (!(resolveIRI instanceof SVG.SvgElement)) {
                this.state = (RendererState) ((Stack) this.stateStack).pop();
                return null;
            }
            path = objectToPath((SVG.SvgElement) resolveIRI, false);
            if (path != null) {
                if (use.boundingBox == null) {
                    use.boundingBox = calculatePathBounds(path);
                }
                Matrix matrix = use.transform;
                if (matrix != null) {
                    path.transform(matrix);
                }
                if (((RendererState) this.state).style.clipPath != null && (calculateClipPath = calculateClipPath(svgElement, svgElement.boundingBox)) != null) {
                    path.op(calculateClipPath, Path.Op.INTERSECT);
                }
                this.state = (RendererState) ((Stack) this.stateStack).pop();
                return path;
            }
            return null;
        }
        if (svgElement instanceof SVG.GraphicsElement) {
            SVG.GraphicsElement graphicsElement = (SVG.GraphicsElement) svgElement;
            if (svgElement instanceof SVG.Path) {
                PathConverter pathConverter = new PathConverter(((SVG.Path) svgElement).d);
                SVG.Box box = svgElement.boundingBox;
                Path path2 = pathConverter.path;
                if (box == null) {
                    svgElement.boundingBox = calculatePathBounds(path2);
                }
                path = path2;
            } else {
                path = svgElement instanceof SVG.Rect ? makePathAndBoundingBox((SVG.Rect) svgElement) : svgElement instanceof SVG.Circle ? makePathAndBoundingBox((SVG.Circle) svgElement) : svgElement instanceof SVG.Ellipse ? makePathAndBoundingBox((SVG.Ellipse) svgElement) : svgElement instanceof SVG.PolyLine ? makePathAndBoundingBox((SVG.PolyLine) svgElement) : null;
            }
            if (path != null) {
                if (graphicsElement.boundingBox == null) {
                    graphicsElement.boundingBox = calculatePathBounds(path);
                }
                Matrix matrix2 = graphicsElement.transform;
                if (matrix2 != null) {
                    path.transform(matrix2);
                }
                SVG.Style.FillRule fillRule = ((RendererState) this.state).style.clipRule;
                path.setFillType((fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
            }
            return null;
        }
        if (!(svgElement instanceof SVG.Text)) {
            error("Invalid %s element found in clipPath definition", svgElement.getNodeName());
            return null;
        }
        SVG.Text text = (SVG.Text) svgElement;
        ArrayList arrayList = text.x;
        float f = RecyclerView.DECELERATION_RATE;
        float floatValueX = (arrayList == null || arrayList.size() == 0) ? 0.0f : ((SVG.Length) text.x.get(0)).floatValueX(this);
        ArrayList arrayList2 = text.y;
        float floatValueY = (arrayList2 == null || arrayList2.size() == 0) ? 0.0f : ((SVG.Length) text.y.get(0)).floatValueY(this);
        ArrayList arrayList3 = text.dx;
        float floatValueX2 = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) text.dx.get(0)).floatValueX(this);
        ArrayList arrayList4 = text.dy;
        if (arrayList4 != null && arrayList4.size() != 0) {
            f = ((SVG.Length) text.dy.get(0)).floatValueY(this);
        }
        if (((RendererState) this.state).style.textAnchor != SVG.Style.TextAnchor.Start) {
            float calculateTextWidth = calculateTextWidth(text);
            if (((RendererState) this.state).style.textAnchor == SVG.Style.TextAnchor.Middle) {
                calculateTextWidth /= 2.0f;
            }
            floatValueX -= calculateTextWidth;
        }
        if (text.boundingBox == null) {
            PlainTextToPath plainTextToPath = new PlainTextToPath(this, floatValueX, floatValueY);
            enumerateTextSpans(text, plainTextToPath);
            Object obj = plainTextToPath.textAsPath;
            RectF rectF = (RectF) obj;
            text.boundingBox = new SVG.Box(rectF.left, rectF.top, rectF.width(), ((RectF) obj).height());
        }
        Path path3 = new Path();
        enumerateTextSpans(text, new PlainTextToPath(this, floatValueX + floatValueX2, floatValueY + f, path3));
        Matrix matrix3 = text.transform;
        if (matrix3 != null) {
            path3.transform(matrix3);
        }
        SVG.Style.FillRule fillRule2 = ((RendererState) this.state).style.clipRule;
        path3.setFillType((fillRule2 == null || fillRule2 != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
        path = path3;
        if (((RendererState) this.state).style.clipPath != null) {
            path.op(calculateClipPath, Path.Op.INTERSECT);
        }
        this.state = (RendererState) ((Stack) this.stateStack).pop();
        return path;
    }

    public void popLayer(SVG.Box box) {
        Canvas canvas = (Canvas) this.canvas;
        if (((RendererState) this.state).style.mask != null) {
            Paint paint = new Paint();
            PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
            paint.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint, 31);
            Paint paint2 = new Paint();
            paint2.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[]{RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0.2127f, 0.7151f, 0.0722f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE})));
            canvas.saveLayer(null, paint2, 31);
            SVG.Mask mask = (SVG.Mask) ((SVG) this.document).resolveIRI(((RendererState) this.state).style.mask);
            renderMask(mask, box);
            canvas.restore();
            Paint paint3 = new Paint();
            paint3.setXfermode(new PorterDuffXfermode(mode));
            canvas.saveLayer(null, paint3, 31);
            renderMask(mask, box);
            canvas.restore();
            canvas.restore();
        }
        statePop();
    }

    public boolean pushLayer() {
        SVG.SvgElementBase resolveIRI;
        if (((RendererState) this.state).style.opacity.floatValue() >= 1.0f && ((RendererState) this.state).style.mask == null) {
            return false;
        }
        Canvas canvas = (Canvas) this.canvas;
        int floatValue = (int) (((RendererState) this.state).style.opacity.floatValue() * 256.0f);
        if (floatValue < 0) {
            floatValue = 0;
        } else if (floatValue > 255) {
            floatValue = 255;
        }
        canvas.saveLayerAlpha(null, floatValue, 31);
        ((Stack) this.stateStack).push((RendererState) this.state);
        RendererState rendererState = new RendererState((RendererState) this.state);
        this.state = rendererState;
        String str = rendererState.style.mask;
        if (str != null && ((resolveIRI = ((SVG) this.document).resolveIRI(str)) == null || !(resolveIRI instanceof SVG.Mask))) {
            error("Mask reference '%s' not found", ((RendererState) this.state).style.mask);
            ((RendererState) this.state).style.mask = null;
        }
        return true;
    }

    public void readTheList() {
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(listSource());
            try {
                ByteString readByteString = realBufferedSource.readByteString(realBufferedSource.readInt());
                ByteString readByteString2 = realBufferedSource.readByteString(realBufferedSource.readInt());
                realBufferedSource.close();
                synchronized (this) {
                    readByteString.getClass();
                    this.state = readByteString;
                    readByteString2.getClass();
                    this.stateStack = readByteString2;
                }
            } finally {
            }
        } finally {
            ((CountDownLatch) this.document).countDown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void render(SVG.SvgObject svgObject) {
        SVG.Length length;
        String str;
        int indexOf;
        Set systemLanguage;
        SVG.Length length2;
        Boolean bool;
        if (svgObject instanceof SVG.NotDirectlyRendered) {
            return;
        }
        statePush();
        if ((svgObject instanceof SVG.SvgElementBase) && (bool = ((SVG.SvgElementBase) svgObject).spacePreserve) != null) {
            ((RendererState) this.state).spacePreserve = bool.booleanValue();
        }
        if (svgObject instanceof SVG.Svg) {
            SVG.Svg svg = (SVG.Svg) svgObject;
            render(svg, makeViewPort(svg.x, svg.y, svg.width, svg.height), svg.viewBox, svg.preserveAspectRatio);
        } else {
            boolean z = svgObject instanceof SVG.Use;
            Bitmap bitmap = null;
            float f = RecyclerView.DECELERATION_RATE;
            if (z) {
                SVG.Use use = (SVG.Use) svgObject;
                Canvas canvas = (Canvas) this.canvas;
                SVG.Length length3 = use.width;
                if ((length3 == null || !length3.isZero()) && ((length2 = use.height) == null || !length2.isZero())) {
                    updateStyleForElement((RendererState) this.state, use);
                    if (display()) {
                        SVG.SvgObject resolveIRI = use.document.resolveIRI(use.href);
                        if (resolveIRI == null) {
                            error("Use reference '%s' not found", use.href);
                        } else {
                            Matrix matrix = use.transform;
                            if (matrix != null) {
                                canvas.concat(matrix);
                            }
                            SVG.Length length4 = use.x;
                            float floatValueX = length4 != null ? length4.floatValueX(this) : 0.0f;
                            SVG.Length length5 = use.y;
                            canvas.translate(floatValueX, length5 != null ? length5.floatValueY(this) : 0.0f);
                            checkForClipPath(use, use.boundingBox);
                            boolean pushLayer = pushLayer();
                            ((Stack) this.parentStack).push(use);
                            ((Stack) this.matrixStack).push(((Canvas) this.canvas).getMatrix());
                            if (resolveIRI instanceof SVG.Svg) {
                                SVG.Svg svg2 = (SVG.Svg) resolveIRI;
                                SVG.Box makeViewPort = makeViewPort(null, null, use.width, use.height);
                                statePush();
                                render(svg2, makeViewPort, svg2.viewBox, svg2.preserveAspectRatio);
                                statePop();
                            } else if (resolveIRI instanceof SVG.Symbol) {
                                SVG.Length length6 = use.width;
                                if (length6 == null) {
                                    length6 = new SVG.Length(100.0f, SVG.Unit.percent);
                                }
                                SVG.Length length7 = use.height;
                                if (length7 == null) {
                                    length7 = new SVG.Length(100.0f, SVG.Unit.percent);
                                }
                                SVG.Box makeViewPort2 = makeViewPort(null, null, length6, length7);
                                statePush();
                                SVG.Symbol symbol = (SVG.Symbol) resolveIRI;
                                if (makeViewPort2.width != RecyclerView.DECELERATION_RATE && makeViewPort2.height != RecyclerView.DECELERATION_RATE) {
                                    PreserveAspectRatio preserveAspectRatio = symbol.preserveAspectRatio;
                                    if (preserveAspectRatio == null) {
                                        preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
                                    }
                                    updateStyleForElement((RendererState) this.state, symbol);
                                    RendererState rendererState = (RendererState) this.state;
                                    rendererState.viewPort = makeViewPort2;
                                    if (!rendererState.style.overflow.booleanValue()) {
                                        SVG.Box box = ((RendererState) this.state).viewPort;
                                        setClipRect(box.minX, box.minY, box.width, box.height);
                                    }
                                    SVG.Box box2 = symbol.viewBox;
                                    RendererState rendererState2 = (RendererState) this.state;
                                    if (box2 != null) {
                                        canvas.concat(calculateViewBoxTransform(rendererState2.viewPort, box2, preserveAspectRatio));
                                        ((RendererState) this.state).viewBox = symbol.viewBox;
                                    } else {
                                        SVG.Box box3 = rendererState2.viewPort;
                                        canvas.translate(box3.minX, box3.minY);
                                    }
                                    boolean pushLayer2 = pushLayer();
                                    renderChildren(symbol, true);
                                    if (pushLayer2) {
                                        popLayer(symbol.boundingBox);
                                    }
                                    updateParentBoundingBox(symbol);
                                }
                                statePop();
                            } else {
                                render(resolveIRI);
                            }
                            ((Stack) this.parentStack).pop();
                            ((Stack) this.matrixStack).pop();
                            if (pushLayer) {
                                popLayer(use.boundingBox);
                            }
                            updateParentBoundingBox(use);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Switch) {
                SVG.Switch r14 = (SVG.Switch) svgObject;
                updateStyleForElement((RendererState) this.state, r14);
                if (display()) {
                    Matrix matrix2 = r14.transform;
                    if (matrix2 != null) {
                        ((Canvas) this.canvas).concat(matrix2);
                    }
                    checkForClipPath(r14, r14.boundingBox);
                    boolean pushLayer3 = pushLayer();
                    String language = Locale.getDefault().getLanguage();
                    Iterator it = r14.children.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        SVG.SvgObject svgObject2 = (SVG.SvgObject) it.next();
                        if (svgObject2 instanceof SVG.SvgConditional) {
                            SVG.SvgConditional svgConditional = (SVG.SvgConditional) svgObject2;
                            if (svgConditional.getRequiredExtensions() == null && ((systemLanguage = svgConditional.getSystemLanguage()) == null || (!systemLanguage.isEmpty() && systemLanguage.contains(language)))) {
                                Set requiredFeatures = svgConditional.getRequiredFeatures();
                                if (requiredFeatures != null) {
                                    if (supportedFeatures == null) {
                                        synchronized (SVGAndroidRenderer.class) {
                                            HashSet hashSet = new HashSet();
                                            supportedFeatures = hashSet;
                                            hashSet.add("Structure");
                                            supportedFeatures.add("BasicStructure");
                                            supportedFeatures.add("ConditionalProcessing");
                                            supportedFeatures.add("Image");
                                            supportedFeatures.add("Style");
                                            supportedFeatures.add("ViewportAttribute");
                                            supportedFeatures.add("Shape");
                                            supportedFeatures.add("BasicText");
                                            supportedFeatures.add("PaintAttribute");
                                            supportedFeatures.add("BasicPaintAttribute");
                                            supportedFeatures.add("OpacityAttribute");
                                            supportedFeatures.add("BasicGraphicsAttribute");
                                            supportedFeatures.add("Marker");
                                            supportedFeatures.add("Gradient");
                                            supportedFeatures.add("Pattern");
                                            supportedFeatures.add("Clip");
                                            supportedFeatures.add("BasicClip");
                                            supportedFeatures.add("Mask");
                                            supportedFeatures.add("View");
                                        }
                                    }
                                    if (!requiredFeatures.isEmpty() && supportedFeatures.containsAll(requiredFeatures)) {
                                    }
                                }
                                Set requiredFormats = svgConditional.getRequiredFormats();
                                if (requiredFormats == null) {
                                    Set requiredFonts = svgConditional.getRequiredFonts();
                                    if (requiredFonts == null) {
                                        render(svgObject2);
                                        break;
                                    }
                                    requiredFonts.isEmpty();
                                } else {
                                    requiredFormats.isEmpty();
                                }
                            }
                        }
                    }
                    if (pushLayer3) {
                        popLayer(r14.boundingBox);
                    }
                    updateParentBoundingBox(r14);
                }
            } else if (svgObject instanceof SVG.Group) {
                SVG.Group group = (SVG.Group) svgObject;
                updateStyleForElement((RendererState) this.state, group);
                if (display()) {
                    Matrix matrix3 = group.transform;
                    if (matrix3 != null) {
                        ((Canvas) this.canvas).concat(matrix3);
                    }
                    checkForClipPath(group, group.boundingBox);
                    boolean pushLayer4 = pushLayer();
                    renderChildren(group, true);
                    if (pushLayer4) {
                        popLayer(group.boundingBox);
                    }
                    updateParentBoundingBox(group);
                }
            } else if (svgObject instanceof SVG.Image) {
                SVG.Image image = (SVG.Image) svgObject;
                Canvas canvas2 = (Canvas) this.canvas;
                SVG.Length length8 = image.width;
                if (length8 != null && !length8.isZero() && (length = image.height) != null && !length.isZero() && (str = image.href) != null) {
                    PreserveAspectRatio preserveAspectRatio2 = image.preserveAspectRatio;
                    if (preserveAspectRatio2 == null) {
                        preserveAspectRatio2 = PreserveAspectRatio.LETTERBOX;
                    }
                    if (str.startsWith("data:") && str.length() >= 14 && (indexOf = str.indexOf(44)) >= 12 && ";base64".equals(str.substring(indexOf - 7, indexOf))) {
                        try {
                            byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
                            bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                        } catch (Exception e) {
                            Log.e("SVGAndroidRenderer", "Could not decode bad Data URL", e);
                        }
                    }
                    if (bitmap != null) {
                        SVG.Box box4 = new SVG.Box(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, bitmap.getWidth(), bitmap.getHeight());
                        updateStyleForElement((RendererState) this.state, image);
                        if (display() && visible()) {
                            Matrix matrix4 = image.transform;
                            if (matrix4 != null) {
                                canvas2.concat(matrix4);
                            }
                            SVG.Length length9 = image.x;
                            float floatValueX2 = length9 != null ? length9.floatValueX(this) : 0.0f;
                            SVG.Length length10 = image.y;
                            float floatValueY = length10 != null ? length10.floatValueY(this) : 0.0f;
                            float floatValueX3 = image.width.floatValueX(this);
                            float floatValueX4 = image.height.floatValueX(this);
                            RendererState rendererState3 = (RendererState) this.state;
                            rendererState3.viewPort = new SVG.Box(floatValueX2, floatValueY, floatValueX3, floatValueX4);
                            if (!rendererState3.style.overflow.booleanValue()) {
                                SVG.Box box5 = ((RendererState) this.state).viewPort;
                                setClipRect(box5.minX, box5.minY, box5.width, box5.height);
                            }
                            image.boundingBox = ((RendererState) this.state).viewPort;
                            updateParentBoundingBox(image);
                            checkForClipPath(image, image.boundingBox);
                            boolean pushLayer5 = pushLayer();
                            viewportFill();
                            canvas2.save();
                            canvas2.concat(calculateViewBoxTransform(((RendererState) this.state).viewPort, box4, preserveAspectRatio2));
                            canvas2.drawBitmap(bitmap, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, new Paint(((RendererState) this.state).style.imageRendering != SVG.Style.RenderQuality.optimizeSpeed ? 2 : 0));
                            canvas2.restore();
                            if (pushLayer5) {
                                popLayer(image.boundingBox);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Path) {
                SVG.Path path = (SVG.Path) svgObject;
                if (path.d != null) {
                    updateStyleForElement((RendererState) this.state, path);
                    if (display() && visible()) {
                        RendererState rendererState4 = (RendererState) this.state;
                        if (rendererState4.hasStroke || rendererState4.hasFill) {
                            Matrix matrix5 = path.transform;
                            if (matrix5 != null) {
                                ((Canvas) this.canvas).concat(matrix5);
                            }
                            Path path2 = new PathConverter(path.d).path;
                            if (path.boundingBox == null) {
                                path.boundingBox = calculatePathBounds(path2);
                            }
                            updateParentBoundingBox(path);
                            checkForGradientsAndPatterns(path);
                            checkForClipPath(path, path.boundingBox);
                            boolean pushLayer6 = pushLayer();
                            RendererState rendererState5 = (RendererState) this.state;
                            if (rendererState5.hasFill) {
                                SVG.Style.FillRule fillRule = rendererState5.style.fillRule;
                                path2.setFillType((fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                doFilledPath(path, path2);
                            }
                            if (((RendererState) this.state).hasStroke) {
                                doStroke(path2);
                            }
                            renderMarkers(path);
                            if (pushLayer6) {
                                popLayer(path.boundingBox);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Rect) {
                SVG.Rect rect = (SVG.Rect) svgObject;
                SVG.Length length11 = rect.width;
                if (length11 != null && rect.height != null && !length11.isZero() && !rect.height.isZero()) {
                    updateStyleForElement((RendererState) this.state, rect);
                    if (display() && visible()) {
                        Matrix matrix6 = rect.transform;
                        if (matrix6 != null) {
                            ((Canvas) this.canvas).concat(matrix6);
                        }
                        Path makePathAndBoundingBox = makePathAndBoundingBox(rect);
                        updateParentBoundingBox(rect);
                        checkForGradientsAndPatterns(rect);
                        checkForClipPath(rect, rect.boundingBox);
                        boolean pushLayer7 = pushLayer();
                        if (((RendererState) this.state).hasFill) {
                            doFilledPath(rect, makePathAndBoundingBox);
                        }
                        if (((RendererState) this.state).hasStroke) {
                            doStroke(makePathAndBoundingBox);
                        }
                        if (pushLayer7) {
                            popLayer(rect.boundingBox);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Circle) {
                SVG.Circle circle = (SVG.Circle) svgObject;
                SVG.Length length12 = circle.r;
                if (length12 != null && !length12.isZero()) {
                    updateStyleForElement((RendererState) this.state, circle);
                    if (display() && visible()) {
                        Matrix matrix7 = circle.transform;
                        if (matrix7 != null) {
                            ((Canvas) this.canvas).concat(matrix7);
                        }
                        Path makePathAndBoundingBox2 = makePathAndBoundingBox(circle);
                        updateParentBoundingBox(circle);
                        checkForGradientsAndPatterns(circle);
                        checkForClipPath(circle, circle.boundingBox);
                        boolean pushLayer8 = pushLayer();
                        if (((RendererState) this.state).hasFill) {
                            doFilledPath(circle, makePathAndBoundingBox2);
                        }
                        if (((RendererState) this.state).hasStroke) {
                            doStroke(makePathAndBoundingBox2);
                        }
                        if (pushLayer8) {
                            popLayer(circle.boundingBox);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Ellipse) {
                SVG.Ellipse ellipse = (SVG.Ellipse) svgObject;
                SVG.Length length13 = ellipse.rx;
                if (length13 != null && ellipse.ry != null && !length13.isZero() && !ellipse.ry.isZero()) {
                    updateStyleForElement((RendererState) this.state, ellipse);
                    if (display() && visible()) {
                        Matrix matrix8 = ellipse.transform;
                        if (matrix8 != null) {
                            ((Canvas) this.canvas).concat(matrix8);
                        }
                        Path makePathAndBoundingBox3 = makePathAndBoundingBox(ellipse);
                        updateParentBoundingBox(ellipse);
                        checkForGradientsAndPatterns(ellipse);
                        checkForClipPath(ellipse, ellipse.boundingBox);
                        boolean pushLayer9 = pushLayer();
                        if (((RendererState) this.state).hasFill) {
                            doFilledPath(ellipse, makePathAndBoundingBox3);
                        }
                        if (((RendererState) this.state).hasStroke) {
                            doStroke(makePathAndBoundingBox3);
                        }
                        if (pushLayer9) {
                            popLayer(ellipse.boundingBox);
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Line) {
                SVG.Line line = (SVG.Line) svgObject;
                updateStyleForElement((RendererState) this.state, line);
                if (display() && visible() && ((RendererState) this.state).hasStroke) {
                    Matrix matrix9 = line.transform;
                    if (matrix9 != null) {
                        ((Canvas) this.canvas).concat(matrix9);
                    }
                    SVG.Length length14 = line.x1;
                    float floatValueX5 = length14 == null ? 0.0f : length14.floatValueX(this);
                    SVG.Length length15 = line.y1;
                    float floatValueY2 = length15 == null ? 0.0f : length15.floatValueY(this);
                    SVG.Length length16 = line.x2;
                    float floatValueX6 = length16 == null ? 0.0f : length16.floatValueX(this);
                    SVG.Length length17 = line.y2;
                    if (length17 != null) {
                        f = length17.floatValueY(this);
                    }
                    if (line.boundingBox == null) {
                        line.boundingBox = new SVG.Box(Math.min(floatValueX5, floatValueX6), Math.min(floatValueY2, f), Math.abs(floatValueX6 - floatValueX5), Math.abs(f - floatValueY2));
                    }
                    Path path3 = new Path();
                    path3.moveTo(floatValueX5, floatValueY2);
                    path3.lineTo(floatValueX6, f);
                    updateParentBoundingBox(line);
                    checkForGradientsAndPatterns(line);
                    checkForClipPath(line, line.boundingBox);
                    boolean pushLayer10 = pushLayer();
                    doStroke(path3);
                    renderMarkers(line);
                    if (pushLayer10) {
                        popLayer(line.boundingBox);
                    }
                }
            } else if (svgObject instanceof SVG.Polygon) {
                SVG.Polygon polygon = (SVG.Polygon) svgObject;
                updateStyleForElement((RendererState) this.state, polygon);
                if (display() && visible()) {
                    RendererState rendererState6 = (RendererState) this.state;
                    if (rendererState6.hasStroke || rendererState6.hasFill) {
                        Matrix matrix10 = polygon.transform;
                        if (matrix10 != null) {
                            ((Canvas) this.canvas).concat(matrix10);
                        }
                        if (polygon.points.length >= 2) {
                            Path makePathAndBoundingBox4 = makePathAndBoundingBox(polygon);
                            updateParentBoundingBox(polygon);
                            checkForGradientsAndPatterns(polygon);
                            checkForClipPath(polygon, polygon.boundingBox);
                            boolean pushLayer11 = pushLayer();
                            if (((RendererState) this.state).hasFill) {
                                doFilledPath(polygon, makePathAndBoundingBox4);
                            }
                            if (((RendererState) this.state).hasStroke) {
                                doStroke(makePathAndBoundingBox4);
                            }
                            renderMarkers(polygon);
                            if (pushLayer11) {
                                popLayer(polygon.boundingBox);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.PolyLine) {
                SVG.PolyLine polyLine = (SVG.PolyLine) svgObject;
                updateStyleForElement((RendererState) this.state, polyLine);
                if (display() && visible()) {
                    RendererState rendererState7 = (RendererState) this.state;
                    if (rendererState7.hasStroke || rendererState7.hasFill) {
                        Matrix matrix11 = polyLine.transform;
                        if (matrix11 != null) {
                            ((Canvas) this.canvas).concat(matrix11);
                        }
                        if (polyLine.points.length >= 2) {
                            Path makePathAndBoundingBox5 = makePathAndBoundingBox(polyLine);
                            updateParentBoundingBox(polyLine);
                            SVG.Style.FillRule fillRule2 = ((RendererState) this.state).style.fillRule;
                            makePathAndBoundingBox5.setFillType((fillRule2 == null || fillRule2 != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            checkForGradientsAndPatterns(polyLine);
                            checkForClipPath(polyLine, polyLine.boundingBox);
                            boolean pushLayer12 = pushLayer();
                            if (((RendererState) this.state).hasFill) {
                                doFilledPath(polyLine, makePathAndBoundingBox5);
                            }
                            if (((RendererState) this.state).hasStroke) {
                                doStroke(makePathAndBoundingBox5);
                            }
                            renderMarkers(polyLine);
                            if (pushLayer12) {
                                popLayer(polyLine.boundingBox);
                            }
                        }
                    }
                }
            } else if (svgObject instanceof SVG.Text) {
                SVG.Text text = (SVG.Text) svgObject;
                updateStyleForElement((RendererState) this.state, text);
                if (display()) {
                    Matrix matrix12 = text.transform;
                    if (matrix12 != null) {
                        ((Canvas) this.canvas).concat(matrix12);
                    }
                    ArrayList arrayList = text.x;
                    float floatValueX7 = (arrayList == null || arrayList.size() == 0) ? 0.0f : ((SVG.Length) text.x.get(0)).floatValueX(this);
                    ArrayList arrayList2 = text.y;
                    float floatValueY3 = (arrayList2 == null || arrayList2.size() == 0) ? 0.0f : ((SVG.Length) text.y.get(0)).floatValueY(this);
                    ArrayList arrayList3 = text.dx;
                    float floatValueX8 = (arrayList3 == null || arrayList3.size() == 0) ? 0.0f : ((SVG.Length) text.dx.get(0)).floatValueX(this);
                    ArrayList arrayList4 = text.dy;
                    if (arrayList4 != null && arrayList4.size() != 0) {
                        f = ((SVG.Length) text.dy.get(0)).floatValueY(this);
                    }
                    SVG.Style.TextAnchor anchorPosition = getAnchorPosition();
                    if (anchorPosition != SVG.Style.TextAnchor.Start) {
                        float calculateTextWidth = calculateTextWidth(text);
                        if (anchorPosition == SVG.Style.TextAnchor.Middle) {
                            calculateTextWidth /= 2.0f;
                        }
                        floatValueX7 -= calculateTextWidth;
                    }
                    if (text.boundingBox == null) {
                        PlainTextToPath plainTextToPath = new PlainTextToPath(this, floatValueX7, floatValueY3);
                        enumerateTextSpans(text, plainTextToPath);
                        RectF rectF = (RectF) plainTextToPath.textAsPath;
                        text.boundingBox = new SVG.Box(rectF.left, rectF.top, rectF.width(), ((RectF) plainTextToPath.textAsPath).height());
                    }
                    updateParentBoundingBox(text);
                    checkForGradientsAndPatterns(text);
                    checkForClipPath(text, text.boundingBox);
                    boolean pushLayer13 = pushLayer();
                    enumerateTextSpans(text, new PlainTextDrawer(floatValueX7 + floatValueX8, floatValueY3 + f));
                    if (pushLayer13) {
                        popLayer(text.boundingBox);
                    }
                }
            }
        }
        statePop();
    }

    public void renderChildren(SVG.SvgContainer svgContainer, boolean z) {
        if (z) {
            ((Stack) this.parentStack).push(svgContainer);
            ((Stack) this.matrixStack).push(((Canvas) this.canvas).getMatrix());
        }
        Iterator it = svgContainer.getChildren().iterator();
        while (it.hasNext()) {
            render((SVG.SvgObject) it.next());
        }
        if (z) {
            ((Stack) this.parentStack).pop();
            ((Stack) this.matrixStack).pop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fb, code lost:
    
        if (r8 != 8) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderMarker(com.caverock.androidsvg.SVG.Marker r13, com.caverock.androidsvg.SVGAndroidRenderer.MarkerVector r14) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.renderMarker(com.caverock.androidsvg.SVG$Marker, com.caverock.androidsvg.SVGAndroidRenderer$MarkerVector):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderMarkers(com.caverock.androidsvg.SVG.GraphicsElement r20) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGAndroidRenderer.renderMarkers(com.caverock.androidsvg.SVG$GraphicsElement):void");
    }

    public void renderMask(SVG.Mask mask, SVG.Box box) {
        float f;
        float f2;
        Canvas canvas = (Canvas) this.canvas;
        Boolean bool = mask.maskUnitsAreUser;
        if (bool == null || !bool.booleanValue()) {
            SVG.Length length = mask.width;
            float floatValue = length != null ? length.floatValue(this, 1.0f) : 1.2f;
            SVG.Length length2 = mask.height;
            float floatValue2 = length2 != null ? length2.floatValue(this, 1.0f) : 1.2f;
            f = floatValue * box.width;
            f2 = floatValue2 * box.height;
        } else {
            SVG.Length length3 = mask.width;
            f = length3 != null ? length3.floatValueX(this) : box.width;
            SVG.Length length4 = mask.height;
            f2 = length4 != null ? length4.floatValueY(this) : box.height;
        }
        if (f == RecyclerView.DECELERATION_RATE || f2 == RecyclerView.DECELERATION_RATE) {
            return;
        }
        statePush();
        RendererState findInheritFromAncestorState = findInheritFromAncestorState(mask);
        this.state = findInheritFromAncestorState;
        findInheritFromAncestorState.style.opacity = Float.valueOf(1.0f);
        boolean pushLayer = pushLayer();
        canvas.save();
        Boolean bool2 = mask.maskContentUnitsAreUser;
        if (bool2 != null && !bool2.booleanValue()) {
            canvas.translate(box.minX, box.minY);
            canvas.scale(box.width, box.height);
        }
        renderChildren(mask, false);
        canvas.restore();
        if (pushLayer) {
            popLayer(box);
        }
        statePop();
    }

    public void setClipRect(float f, float f2, float f3, float f4) {
        float f5 = f3 + f;
        float f6 = f4 + f2;
        ImageLoader$Builder imageLoader$Builder = ((RendererState) this.state).style.clip;
        if (imageLoader$Builder != null) {
            f += ((SVG.Length) imageLoader$Builder.extras).floatValueX(this);
            f2 += ((SVG.Length) ((RendererState) this.state).style.clip.application).floatValueY(this);
            f5 -= ((SVG.Length) ((RendererState) this.state).style.clip.defaults).floatValueX(this);
            f6 -= ((SVG.Length) ((RendererState) this.state).style.clip.componentRegistry).floatValueY(this);
        }
        ((Canvas) this.canvas).clipRect(f, f2, f5, f6);
    }

    public void startFunnel(String str) {
        this.state = new Funnel(str);
    }

    public void statePop() {
        ((Canvas) this.canvas).restore();
        this.state = (RendererState) ((Stack) this.stateStack).pop();
    }

    public void statePush() {
        ((Canvas) this.canvas).save();
        ((Stack) this.stateStack).push((RendererState) this.state);
        this.state = new RendererState((RendererState) this.state);
    }

    public String textXMLSpaceTransform(String str, boolean z, boolean z2) {
        if (((RendererState) this.state).spacePreserve) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String replaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
        if (z) {
            replaceAll = replaceAll.replaceAll("^\\s+", "");
        }
        if (z2) {
            replaceAll = replaceAll.replaceAll("\\s+$", "");
        }
        return replaceAll.replaceAll("\\s{2,}", " ");
    }

    public void updateParentBoundingBox(SVG.SvgElement svgElement) {
        if (svgElement.parent == null || svgElement.boundingBox == null) {
            return;
        }
        Matrix matrix = new Matrix();
        if (((Matrix) ((Stack) this.matrixStack).peek()).invert(matrix)) {
            SVG.Box box = svgElement.boundingBox;
            float f = box.minX;
            float f2 = box.minY;
            float maxX = box.maxX();
            SVG.Box box2 = svgElement.boundingBox;
            float f3 = box2.minY;
            float maxX2 = box2.maxX();
            float maxY = svgElement.boundingBox.maxY();
            SVG.Box box3 = svgElement.boundingBox;
            float[] fArr = {f, f2, maxX, f3, maxX2, maxY, box3.minX, box3.maxY()};
            matrix.preConcat(((Canvas) this.canvas).getMatrix());
            matrix.mapPoints(fArr);
            float f4 = fArr[0];
            float f5 = fArr[1];
            RectF rectF = new RectF(f4, f5, f4, f5);
            for (int i = 2; i <= 6; i += 2) {
                float f6 = fArr[i];
                if (f6 < rectF.left) {
                    rectF.left = f6;
                }
                if (f6 > rectF.right) {
                    rectF.right = f6;
                }
                float f7 = fArr[i + 1];
                if (f7 < rectF.top) {
                    rectF.top = f7;
                }
                if (f7 > rectF.bottom) {
                    rectF.bottom = f7;
                }
            }
            SVG.SvgElement svgElement2 = (SVG.SvgElement) ((Stack) this.parentStack).peek();
            SVG.Box box4 = svgElement2.boundingBox;
            float f8 = rectF.left;
            float f9 = rectF.top;
            if (box4 == null) {
                svgElement2.boundingBox = new SVG.Box(f8, f9, rectF.right - f8, rectF.bottom - f9);
                return;
            }
            float f10 = rectF.right - f8;
            float f11 = rectF.bottom - f9;
            if (f8 < box4.minX) {
                box4.minX = f8;
            }
            if (f9 < box4.minY) {
                box4.minY = f9;
            }
            if (f8 + f10 > box4.maxX()) {
                box4.width = (f8 + f10) - box4.minX;
            }
            if (f9 + f11 > box4.maxY()) {
                box4.height = (f9 + f11) - box4.minY;
            }
        }
    }

    public void updateStyle(RendererState rendererState, SVG.Style style) {
        if (isSpecified(style, 4096L)) {
            rendererState.style.color = style.color;
        }
        if (isSpecified(style, 2048L)) {
            rendererState.style.opacity = style.opacity;
        }
        boolean isSpecified = isSpecified(style, 1L);
        SVG.Colour colour = SVG.Colour.TRANSPARENT;
        if (isSpecified) {
            rendererState.style.fill = style.fill;
            SVG.SvgPaint svgPaint = style.fill;
            rendererState.hasFill = (svgPaint == null || svgPaint == colour) ? false : true;
        }
        if (isSpecified(style, 4L)) {
            rendererState.style.fillOpacity = style.fillOpacity;
        }
        if (isSpecified(style, 6149L)) {
            setPaintColour(rendererState, true, rendererState.style.fill);
        }
        if (isSpecified(style, 2L)) {
            rendererState.style.fillRule = style.fillRule;
        }
        if (isSpecified(style, 8L)) {
            rendererState.style.stroke = style.stroke;
            SVG.SvgPaint svgPaint2 = style.stroke;
            rendererState.hasStroke = (svgPaint2 == null || svgPaint2 == colour) ? false : true;
        }
        if (isSpecified(style, 16L)) {
            rendererState.style.strokeOpacity = style.strokeOpacity;
        }
        if (isSpecified(style, 6168L)) {
            setPaintColour(rendererState, false, rendererState.style.stroke);
        }
        if (isSpecified(style, 34359738368L)) {
            rendererState.style.vectorEffect = style.vectorEffect;
        }
        if (isSpecified(style, 32L)) {
            SVG.Style style2 = rendererState.style;
            SVG.Length length = style.strokeWidth;
            style2.strokeWidth = length;
            rendererState.strokePaint.setStrokeWidth(length.floatValue(this));
        }
        if (isSpecified(style, 64L)) {
            SVG.Style style3 = rendererState.style;
            Paint paint = rendererState.strokePaint;
            style3.strokeLineCap = style.strokeLineCap;
            int i = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap[style.strokeLineCap.ordinal()];
            if (i == 1) {
                paint.setStrokeCap(Paint.Cap.BUTT);
            } else if (i == 2) {
                paint.setStrokeCap(Paint.Cap.ROUND);
            } else if (i == 3) {
                paint.setStrokeCap(Paint.Cap.SQUARE);
            }
        }
        if (isSpecified(style, 128L)) {
            SVG.Style style4 = rendererState.style;
            Paint paint2 = rendererState.strokePaint;
            style4.strokeLineJoin = style.strokeLineJoin;
            int i2 = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin[style.strokeLineJoin.ordinal()];
            if (i2 == 1) {
                paint2.setStrokeJoin(Paint.Join.MITER);
            } else if (i2 == 2) {
                paint2.setStrokeJoin(Paint.Join.ROUND);
            } else if (i2 == 3) {
                paint2.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        if (isSpecified(style, 256L)) {
            rendererState.style.strokeMiterLimit = style.strokeMiterLimit;
            rendererState.strokePaint.setStrokeMiter(style.strokeMiterLimit.floatValue());
        }
        if (isSpecified(style, 512L)) {
            rendererState.style.strokeDashArray = style.strokeDashArray;
        }
        if (isSpecified(style, 1024L)) {
            rendererState.style.strokeDashOffset = style.strokeDashOffset;
        }
        Typeface typeface = null;
        if (isSpecified(style, 1536L)) {
            SVG.Style style5 = rendererState.style;
            Paint paint3 = rendererState.strokePaint;
            SVG.Length[] lengthArr = style5.strokeDashArray;
            if (lengthArr == null) {
                paint3.setPathEffect(null);
            } else {
                int length2 = lengthArr.length;
                int i3 = length2 % 2 == 0 ? length2 : length2 * 2;
                float[] fArr = new float[i3];
                float f = 0.0f;
                for (int i4 = 0; i4 < i3; i4++) {
                    float floatValue = style5.strokeDashArray[i4 % length2].floatValue(this);
                    fArr[i4] = floatValue;
                    f += floatValue;
                }
                if (f == RecyclerView.DECELERATION_RATE) {
                    paint3.setPathEffect(null);
                } else {
                    float floatValue2 = style5.strokeDashOffset.floatValue(this);
                    if (floatValue2 < RecyclerView.DECELERATION_RATE) {
                        floatValue2 = (floatValue2 % f) + f;
                    }
                    paint3.setPathEffect(new DashPathEffect(fArr, floatValue2));
                }
            }
        }
        if (isSpecified(style, 16384L)) {
            float textSize = ((RendererState) this.state).fillPaint.getTextSize();
            rendererState.style.fontSize = style.fontSize;
            rendererState.fillPaint.setTextSize(style.fontSize.floatValue(this, textSize));
            rendererState.strokePaint.setTextSize(style.fontSize.floatValue(this, textSize));
        }
        if (isSpecified(style, 8192L)) {
            rendererState.style.fontFamily = style.fontFamily;
        }
        if (isSpecified(style, 32768L)) {
            if (style.fontWeight.intValue() == -1 && rendererState.style.fontWeight.intValue() > 100) {
                SVG.Style style6 = rendererState.style;
                style6.fontWeight = Integer.valueOf(style6.fontWeight.intValue() - 100);
            } else if (style.fontWeight.intValue() != 1 || rendererState.style.fontWeight.intValue() >= 900) {
                rendererState.style.fontWeight = style.fontWeight;
            } else {
                SVG.Style style7 = rendererState.style;
                style7.fontWeight = Integer.valueOf(style7.fontWeight.intValue() + 100);
            }
        }
        if (isSpecified(style, 65536L)) {
            rendererState.style.fontStyle = style.fontStyle;
        }
        if (isSpecified(style, 106496L)) {
            SVG.Style style8 = rendererState.style;
            ArrayList arrayList = style8.fontFamily;
            if (arrayList != null && ((SVG) this.document) != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext() && (typeface = checkGenericFont((String) it.next(), style8.fontWeight, style8.fontStyle)) == null) {
                }
            }
            if (typeface == null) {
                typeface = checkGenericFont("serif", style8.fontWeight, style8.fontStyle);
            }
            rendererState.fillPaint.setTypeface(typeface);
            rendererState.strokePaint.setTypeface(typeface);
        }
        if (isSpecified(style, 131072L)) {
            SVG.Style style9 = rendererState.style;
            Paint paint4 = rendererState.strokePaint;
            Paint paint5 = rendererState.fillPaint;
            style9.textDecoration = style.textDecoration;
            SVG.Style.TextDecoration textDecoration = style.textDecoration;
            SVG.Style.TextDecoration textDecoration2 = SVG.Style.TextDecoration.LineThrough;
            paint5.setStrikeThruText(textDecoration == textDecoration2);
            SVG.Style.TextDecoration textDecoration3 = style.textDecoration;
            SVG.Style.TextDecoration textDecoration4 = SVG.Style.TextDecoration.Underline;
            paint5.setUnderlineText(textDecoration3 == textDecoration4);
            paint4.setStrikeThruText(style.textDecoration == textDecoration2);
            paint4.setUnderlineText(style.textDecoration == textDecoration4);
        }
        if (isSpecified(style, 68719476736L)) {
            rendererState.style.direction = style.direction;
        }
        if (isSpecified(style, 262144L)) {
            rendererState.style.textAnchor = style.textAnchor;
        }
        if (isSpecified(style, 524288L)) {
            rendererState.style.overflow = style.overflow;
        }
        if (isSpecified(style, 2097152L)) {
            rendererState.style.markerStart = style.markerStart;
        }
        if (isSpecified(style, 4194304L)) {
            rendererState.style.markerMid = style.markerMid;
        }
        if (isSpecified(style, 8388608L)) {
            rendererState.style.markerEnd = style.markerEnd;
        }
        if (isSpecified(style, 16777216L)) {
            rendererState.style.display = style.display;
        }
        if (isSpecified(style, 33554432L)) {
            rendererState.style.visibility = style.visibility;
        }
        if (isSpecified(style, 1048576L)) {
            rendererState.style.clip = style.clip;
        }
        if (isSpecified(style, 268435456L)) {
            rendererState.style.clipPath = style.clipPath;
        }
        if (isSpecified(style, 536870912L)) {
            rendererState.style.clipRule = style.clipRule;
        }
        if (isSpecified(style, 1073741824L)) {
            rendererState.style.mask = style.mask;
        }
        if (isSpecified(style, 67108864L)) {
            rendererState.style.stopColor = style.stopColor;
        }
        if (isSpecified(style, 134217728L)) {
            rendererState.style.stopOpacity = style.stopOpacity;
        }
        if (isSpecified(style, 8589934592L)) {
            rendererState.style.viewportFill = style.viewportFill;
        }
        if (isSpecified(style, 17179869184L)) {
            rendererState.style.viewportFillOpacity = style.viewportFillOpacity;
        }
        if (isSpecified(style, 137438953472L)) {
            rendererState.style.imageRendering = style.imageRendering;
        }
    }

    public void updateStyleForElement(RendererState rendererState, SVG.SvgElementBase svgElementBase) {
        boolean z = svgElementBase.parent == null;
        SVG.Style style = rendererState.style;
        Float valueOf = Float.valueOf(1.0f);
        Boolean bool = Boolean.TRUE;
        style.display = bool;
        if (!z) {
            bool = Boolean.FALSE;
        }
        style.overflow = bool;
        style.clip = null;
        style.clipPath = null;
        style.opacity = valueOf;
        style.stopColor = SVG.Colour.BLACK;
        style.stopOpacity = valueOf;
        style.mask = null;
        style.solidColor = null;
        style.solidOpacity = valueOf;
        style.viewportFill = null;
        style.viewportFillOpacity = valueOf;
        style.vectorEffect = SVG.Style.VectorEffect.None;
        SVG.Style style2 = svgElementBase.baseStyle;
        if (style2 != null) {
            updateStyle(rendererState, style2);
        }
        ArrayList arrayList = ((Headers.Builder) ((SVG) this.document).cssRules).namesAndValues;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it = ((Headers.Builder) ((SVG) this.document).cssRules).namesAndValues.iterator();
            while (it.hasNext()) {
                CSSParser.Rule rule = (CSSParser.Rule) it.next();
                if (CSSParser.ruleMatch(rule.selector, svgElementBase)) {
                    updateStyle(rendererState, rule.style);
                }
            }
        }
        SVG.Style style3 = svgElementBase.style;
        if (style3 != null) {
            updateStyle(rendererState, style3);
        }
    }

    public void viewportFill() {
        int i;
        SVG.Style style = ((RendererState) this.state).style;
        SVG.SvgPaint svgPaint = style.viewportFill;
        if (svgPaint instanceof SVG.Colour) {
            i = ((SVG.Colour) svgPaint).colour;
        } else if (!(svgPaint instanceof SVG.CurrentColor)) {
            return;
        } else {
            i = style.color.colour;
        }
        Float f = style.viewportFillOpacity;
        if (f != null) {
            i = colourWithOpacity(i, f.floatValue());
        }
        ((Canvas) this.canvas).drawColor(i);
    }

    public boolean visible() {
        Boolean bool = ((RendererState) this.state).style.visibility;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlainTextToPath extends DpKt {
        public final /* synthetic */ int $r8$classId;
        public final Object textAsPath;
        public final /* synthetic */ SVGAndroidRenderer this$0;
        public float x;
        public final float y;

        public PlainTextToPath(SVGAndroidRenderer sVGAndroidRenderer, float f, float f2) {
            this.$r8$classId = 1;
            this.this$0 = sVGAndroidRenderer;
            this.textAsPath = new RectF();
            this.x = f;
            this.y = f2;
        }

        @Override // androidx.compose.ui.unit.DpKt
        public final boolean doTextContainer(SVG.TextContainer textContainer) {
            switch (this.$r8$classId) {
                case 0:
                    if (!(textContainer instanceof SVG.TextPath)) {
                        break;
                    } else {
                        Log.w("SVGAndroidRenderer", "Using <textPath> elements in a clip path is not supported.");
                        break;
                    }
                default:
                    if (!(textContainer instanceof SVG.TextPath)) {
                        break;
                    } else {
                        SVG.TextPath textPath = (SVG.TextPath) textContainer;
                        SVG.SvgElementBase resolveIRI = textContainer.document.resolveIRI(textPath.href);
                        if (resolveIRI != null) {
                            SVG.Path path = (SVG.Path) resolveIRI;
                            PathConverter pathConverter = new PathConverter(path.d);
                            Matrix matrix = path.transform;
                            Path path2 = pathConverter.path;
                            if (matrix != null) {
                                path2.transform(matrix);
                            }
                            RectF rectF = new RectF();
                            path2.computeBounds(rectF, true);
                            ((RectF) this.textAsPath).union(rectF);
                            break;
                        } else {
                            SVGAndroidRenderer.error("TextPath path reference '%s' not found", textPath.href);
                            break;
                        }
                    }
            }
            return true;
        }

        @Override // androidx.compose.ui.unit.DpKt
        public final void processText(String str) {
            String str2;
            int i = this.$r8$classId;
            Object obj = this.textAsPath;
            SVGAndroidRenderer sVGAndroidRenderer = this.this$0;
            switch (i) {
                case 0:
                    if (sVGAndroidRenderer.visible()) {
                        Path path = new Path();
                        str2 = str;
                        ((RendererState) sVGAndroidRenderer.state).fillPaint.getTextPath(str2, 0, str.length(), this.x, this.y, path);
                        ((Path) obj).addPath(path);
                    } else {
                        str2 = str;
                    }
                    this.x = ((RendererState) sVGAndroidRenderer.state).fillPaint.measureText(str2) + this.x;
                    break;
                default:
                    if (sVGAndroidRenderer.visible()) {
                        Rect rect = new Rect();
                        ((RendererState) sVGAndroidRenderer.state).fillPaint.getTextBounds(str, 0, str.length(), rect);
                        RectF rectF = new RectF(rect);
                        rectF.offset(this.x, this.y);
                        ((RectF) obj).union(rectF);
                    }
                    this.x = ((RendererState) sVGAndroidRenderer.state).fillPaint.measureText(str) + this.x;
                    break;
            }
        }

        public PlainTextToPath(SVGAndroidRenderer sVGAndroidRenderer, float f, float f2, Path path) {
            this.$r8$classId = 0;
            this.this$0 = sVGAndroidRenderer;
            this.x = f;
            this.y = f2;
            this.textAsPath = path;
        }
    }

    public RendererState findInheritFromAncestorState(SVG.SvgObject svgObject) {
        RendererState rendererState = new RendererState();
        updateStyle(rendererState, SVG.Style.getDefaultStyle());
        findInheritFromAncestorState(svgObject, rendererState);
        return rendererState;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MarkerVector {
        public float dx;
        public float dy;
        public boolean isAmbiguous = false;
        public final float x;
        public final float y;

        public MarkerVector(float f, float f2, float f3, float f4) {
            this.dx = RecyclerView.DECELERATION_RATE;
            this.dy = RecyclerView.DECELERATION_RATE;
            this.x = f;
            this.y = f2;
            double sqrt = Math.sqrt((f4 * f4) + (f3 * f3));
            if (sqrt != 0.0d) {
                this.dx = (float) (f3 / sqrt);
                this.dy = (float) (f4 / sqrt);
            }
        }

        public final void add(float f, float f2) {
            float f3 = f - this.x;
            float f4 = f2 - this.y;
            double sqrt = Math.sqrt((f4 * f4) + (f3 * f3));
            if (sqrt != 0.0d) {
                f3 = (float) (f3 / sqrt);
                f4 = (float) (f4 / sqrt);
            }
            float f5 = this.dx;
            if (f3 != (-f5) || f4 != (-this.dy)) {
                this.dx = f5 + f3;
                this.dy += f4;
            } else {
                this.isAmbiguous = true;
                this.dx = -f4;
                this.dy = f3;
            }
        }

        public final String toString() {
            return "(" + this.x + "," + this.y + " " + this.dx + "," + this.dy + ")";
        }

        public final void add(MarkerVector markerVector) {
            float f = markerVector.dx;
            float f2 = this.dx;
            if (f == (-f2)) {
                float f3 = markerVector.dy;
                if (f3 == (-this.dy)) {
                    this.isAmbiguous = true;
                    this.dx = -f3;
                    this.dy = markerVector.dx;
                    return;
                }
            }
            this.dx = f2 + f;
            this.dy += markerVector.dy;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RendererState {
        public final Paint fillPaint;
        public boolean hasFill;
        public boolean hasStroke;
        public boolean spacePreserve;
        public final Paint strokePaint;
        public final SVG.Style style;
        public SVG.Box viewBox;
        public SVG.Box viewPort;

        public RendererState(RendererState rendererState) {
            this.hasFill = rendererState.hasFill;
            this.hasStroke = rendererState.hasStroke;
            this.fillPaint = new Paint(rendererState.fillPaint);
            this.strokePaint = new Paint(rendererState.strokePaint);
            SVG.Box box = rendererState.viewPort;
            if (box != null) {
                this.viewPort = new SVG.Box(box);
            }
            SVG.Box box2 = rendererState.viewBox;
            if (box2 != null) {
                this.viewBox = new SVG.Box(box2);
            }
            this.spacePreserve = rendererState.spacePreserve;
            try {
                this.style = (SVG.Style) rendererState.style.clone();
            } catch (CloneNotSupportedException e) {
                Log.e("SVGAndroidRenderer", "Unexpected clone error", e);
                this.style = SVG.Style.getDefaultStyle();
            }
        }

        public RendererState() {
            Paint paint = new Paint();
            this.fillPaint = paint;
            paint.setFlags(193);
            paint.setHinting(0);
            paint.setStyle(Paint.Style.FILL);
            Typeface typeface = Typeface.DEFAULT;
            paint.setTypeface(typeface);
            Paint paint2 = new Paint();
            this.strokePaint = paint2;
            paint2.setFlags(193);
            paint2.setHinting(0);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setTypeface(typeface);
            this.style = SVG.Style.getDefaultStyle();
        }
    }

    public /* synthetic */ SVGAndroidRenderer(ViewGroup viewGroup, View view, Object obj, View view2, View view3, View view4, View view5) {
        this.canvas = view;
        this.document = obj;
        this.state = view2;
        this.stateStack = view3;
        this.parentStack = view4;
        this.matrixStack = view5;
    }

    public SVGAndroidRenderer(String str, TestKitchenClient testKitchenClient) {
        this.canvas = str;
        this.document = testKitchenClient;
    }

    public /* synthetic */ SVGAndroidRenderer(View view, View view2, View view3, View view4, View view5, View view6) {
        this.canvas = view;
        this.document = view2;
        this.state = view3;
        this.stateStack = view4;
        this.parentStack = view5;
        this.matrixStack = view6;
    }

    public static void fillInChainedGradientFields(SVG.SvgRadialGradient svgRadialGradient, SVG.SvgRadialGradient svgRadialGradient2) {
        if (svgRadialGradient.cx == null) {
            svgRadialGradient.cx = svgRadialGradient2.cx;
        }
        if (svgRadialGradient.cy == null) {
            svgRadialGradient.cy = svgRadialGradient2.cy;
        }
        if (svgRadialGradient.r == null) {
            svgRadialGradient.r = svgRadialGradient2.r;
        }
        if (svgRadialGradient.fx == null) {
            svgRadialGradient.fx = svgRadialGradient2.fx;
        }
        if (svgRadialGradient.fy == null) {
            svgRadialGradient.fy = svgRadialGradient2.fy;
        }
    }

    public Path makePathAndBoundingBox(SVG.Circle circle) {
        SVG.Length length = circle.cx;
        float f = RecyclerView.DECELERATION_RATE;
        float floatValueX = length != null ? length.floatValueX(this) : 0.0f;
        SVG.Length length2 = circle.cy;
        if (length2 != null) {
            f = length2.floatValueY(this);
        }
        float f2 = f;
        float floatValue = circle.r.floatValue(this);
        float f3 = floatValueX - floatValue;
        float f4 = f2 - floatValue;
        float f5 = floatValueX + floatValue;
        float f6 = f2 + floatValue;
        if (circle.boundingBox == null) {
            float f7 = 2.0f * floatValue;
            circle.boundingBox = new SVG.Box(f3, f4, f7, f7);
        }
        float f8 = floatValue * 0.5522848f;
        Path path = new Path();
        path.moveTo(floatValueX, f4);
        float f9 = floatValueX + f8;
        float f10 = f2 - f8;
        path.cubicTo(f9, f4, f5, f10, f5, f2);
        float f11 = f2 + f8;
        path.cubicTo(f5, f11, f9, f6, floatValueX, f6);
        float f12 = floatValueX - f8;
        path.cubicTo(f12, f6, f3, f11, f3, f2);
        path.cubicTo(f3, f10, f12, f4, floatValueX, f4);
        path.close();
        return path;
    }

    public Path makePathAndBoundingBox(SVG.Ellipse ellipse) {
        SVG.Length length = ellipse.cx;
        float f = RecyclerView.DECELERATION_RATE;
        float floatValueX = length != null ? length.floatValueX(this) : 0.0f;
        SVG.Length length2 = ellipse.cy;
        if (length2 != null) {
            f = length2.floatValueY(this);
        }
        float f2 = f;
        float floatValueX2 = ellipse.rx.floatValueX(this);
        float floatValueY = ellipse.ry.floatValueY(this);
        float f3 = floatValueX - floatValueX2;
        float f4 = f2 - floatValueY;
        float f5 = floatValueX + floatValueX2;
        float f6 = f2 + floatValueY;
        if (ellipse.boundingBox == null) {
            ellipse.boundingBox = new SVG.Box(f3, f4, floatValueX2 * 2.0f, 2.0f * floatValueY);
        }
        float f7 = floatValueX2 * 0.5522848f;
        float f8 = floatValueY * 0.5522848f;
        Path path = new Path();
        path.moveTo(floatValueX, f4);
        float f9 = floatValueX + f7;
        float f10 = f2 - f8;
        path.cubicTo(f9, f4, f5, f10, f5, f2);
        float f11 = f2 + f8;
        path.cubicTo(f5, f11, f9, f6, floatValueX, f6);
        float f12 = floatValueX - f7;
        path.cubicTo(f12, f6, f3, f11, f3, f2);
        path.cubicTo(f3, f10, f12, f4, floatValueX, f4);
        path.close();
        return path;
    }

    public static Path makePathAndBoundingBox(SVG.PolyLine polyLine) {
        Path path = new Path();
        float[] fArr = polyLine.points;
        path.moveTo(fArr[0], fArr[1]);
        int i = 2;
        while (true) {
            float[] fArr2 = polyLine.points;
            if (i >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i], fArr2[i + 1]);
            i += 2;
        }
        if (polyLine instanceof SVG.Polygon) {
            path.close();
        }
        if (polyLine.boundingBox == null) {
            polyLine.boundingBox = calculatePathBounds(path);
        }
        return path;
    }

    public void render(SVG.Svg svg, SVG.Box box, SVG.Box box2, PreserveAspectRatio preserveAspectRatio) {
        if (box.width == RecyclerView.DECELERATION_RATE || box.height == RecyclerView.DECELERATION_RATE) {
            return;
        }
        if (preserveAspectRatio == null && (preserveAspectRatio = svg.preserveAspectRatio) == null) {
            preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
        }
        updateStyleForElement((RendererState) this.state, svg);
        if (display()) {
            RendererState rendererState = (RendererState) this.state;
            rendererState.viewPort = box;
            if (!rendererState.style.overflow.booleanValue()) {
                SVG.Box box3 = ((RendererState) this.state).viewPort;
                setClipRect(box3.minX, box3.minY, box3.width, box3.height);
            }
            checkForClipPath(svg, ((RendererState) this.state).viewPort);
            Canvas canvas = (Canvas) this.canvas;
            RendererState rendererState2 = (RendererState) this.state;
            if (box2 != null) {
                canvas.concat(calculateViewBoxTransform(rendererState2.viewPort, box2, preserveAspectRatio));
                ((RendererState) this.state).viewBox = svg.viewBox;
            } else {
                SVG.Box box4 = rendererState2.viewPort;
                canvas.translate(box4.minX, box4.minY);
            }
            boolean pushLayer = pushLayer();
            viewportFill();
            renderChildren(svg, true);
            if (pushLayer) {
                popLayer(svg.boundingBox);
            }
            updateParentBoundingBox(svg);
        }
    }
}
