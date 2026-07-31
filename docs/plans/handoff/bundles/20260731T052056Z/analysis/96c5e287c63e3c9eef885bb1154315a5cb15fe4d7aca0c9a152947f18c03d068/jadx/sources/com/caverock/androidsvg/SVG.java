package com.caverock.androidsvg;

import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextHelper;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda2;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.ComposePausableCompositionException;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.ThreadMap;
import androidx.compose.runtime.internal.Thread_androidKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DepthSortedSetsForDifferentPasses$WhenMappings;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.text.input.GapBuffer;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.MenuHostHelper$LifecycleContainer;
import androidx.core.view.MenuProvider;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.EmojiProcessor$ProcessorSm;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ServiceLifecycleDispatcher$DispatchRunnable;
import androidx.paging.CombinedLoadStates;
import androidx.paging.FlowExtKt;
import androidx.paging.HintHandler;
import androidx.paging.LoadState;
import androidx.paging.LoadStates;
import androidx.paging.LoadType;
import androidx.paging.MutableLoadStateCollection$WhenMappings;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.AutoMigration_14_15;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.animation.keyframe.ShapeKeyframeAnimation;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate;
import com.google.android.material.motion.MaterialBackOrchestrator$Api34BackCallbackDelegate;
import com.google.android.material.textfield.EndCompoundLayout;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.OutputStream;
import java.lang.Character;
import java.nio.ByteBuffer;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.LazyThreadSafetyMode;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexingIterable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.FormBody;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SVG implements Applier, SaveableStateRegistry.Entry, InputContentInfoCompat$InputContentInfoCompatImpl, ExtendedFloatingActionButton.Size {
    public static SVG sInstance;
    public final /* synthetic */ int $r8$classId;
    public Object cssRules;
    public Object idToElementMap;
    public Object rootElement;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.caverock.androidsvg.SVG$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$SVG$Unit;

        static {
            int[] iArr = new int[Unit.values().length];
            $SwitchMap$com$caverock$androidsvg$SVG$Unit = iArr;
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$SVG$Unit[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Circle extends GraphicsElement {
        public Length cx;
        public Length cy;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "circle";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ClipPath extends Group implements NotDirectlyRendered {
        public Boolean clipPathUnitsAreUser;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "clipPath";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Colour extends SvgPaint {
        public static final Colour BLACK = new Colour(-16777216);
        public static final Colour TRANSPARENT = new Colour(0);
        public final int colour;

        public Colour(int i) {
            this.colour = i;
        }

        public final String toString() {
            return String.format("#%08x", Integer.valueOf(this.colour));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CurrentColor extends SvgPaint {
        public static final CurrentColor instance = new CurrentColor();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Defs extends Group implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "defs";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Ellipse extends GraphicsElement {
        public Length cx;
        public Length cy;
        public Length rx;
        public Length ry;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "ellipse";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class GradientElement extends SvgElementBase implements SvgContainer {
        public ArrayList children = new ArrayList();
        public Matrix gradientTransform;
        public Boolean gradientUnitsAreUser;
        public String href;
        public GradientSpread spreadMethod;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void addChild(SvgObject svgObject) {
            if (svgObject instanceof Stop) {
                this.children.add(svgObject);
                return;
            }
            throw new SVGParseException("Gradient elements cannot contain " + svgObject + " elements.");
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return this.children;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GradientSpread {
        private static final /* synthetic */ GradientSpread[] $VALUES;
        public static final GradientSpread pad;
        public static final GradientSpread reflect;
        public static final GradientSpread repeat;

        static {
            GradientSpread gradientSpread = new GradientSpread("pad", 0);
            pad = gradientSpread;
            GradientSpread gradientSpread2 = new GradientSpread("reflect", 1);
            reflect = gradientSpread2;
            GradientSpread gradientSpread3 = new GradientSpread("repeat", 2);
            repeat = gradientSpread3;
            $VALUES = new GradientSpread[]{gradientSpread, gradientSpread2, gradientSpread3};
        }

        public static GradientSpread valueOf(String str) {
            return (GradientSpread) Enum.valueOf(GradientSpread.class, str);
        }

        public static GradientSpread[] values() {
            return (GradientSpread[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class GraphicsElement extends SvgElement implements HasTransform, SvgConditional {
        public Matrix transform;
        public HashSet requiredFeatures = null;
        public String requiredExtensions = null;
        public HashSet systemLanguage = null;
        public HashSet requiredFormats = null;
        public HashSet requiredFonts = null;

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String getRequiredExtensions() {
            return this.requiredExtensions;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFeatures() {
            return this.requiredFeatures;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFonts() {
            return this.requiredFonts;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getSystemLanguage() {
            return this.systemLanguage;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredExtensions(String str) {
            this.requiredExtensions = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFeatures(HashSet hashSet) {
            this.requiredFeatures = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFonts(HashSet hashSet) {
            this.requiredFonts = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFormats(HashSet hashSet) {
            this.requiredFormats = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setSystemLanguage(HashSet hashSet) {
            this.systemLanguage = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class Group extends SvgConditionalContainer implements HasTransform {
        public Matrix transform;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "group";
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface HasTransform {
        void setTransform(Matrix matrix);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Image extends SvgPreserveAspectRatioContainer implements HasTransform {
        public Length height;
        public String href;
        public Matrix transform;
        public Length width;
        public Length x;
        public Length y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "image";
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Line extends GraphicsElement {
        public Length x1;
        public Length x2;
        public Length y1;
        public Length y2;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "line";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Marker extends SvgViewBoxContainer implements NotDirectlyRendered {
        public Length markerHeight;
        public boolean markerUnitsAreUser;
        public Length markerWidth;
        public Float orient;
        public Length refX;
        public Length refY;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "marker";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Mask extends SvgConditionalContainer implements NotDirectlyRendered {
        public Length height;
        public Boolean maskContentUnitsAreUser;
        public Boolean maskUnitsAreUser;
        public Length width;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "mask";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface NotDirectlyRendered {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PaintReference extends SvgPaint {
        public final SvgPaint fallback;
        public final String href;

        public PaintReference(String str, SvgPaint svgPaint) {
            this.href = str;
            this.fallback = svgPaint;
        }

        public final String toString() {
            return this.href + " " + this.fallback;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Path extends GraphicsElement {
        public PathDefinition d;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "path";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface PathInterface {
        void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void close();

        void cubicTo(float f, float f2, float f3, float f4, float f5, float f6);

        void lineTo(float f, float f2);

        void moveTo(float f, float f2);

        void quadTo(float f, float f2, float f3, float f4);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Pattern extends SvgViewBoxContainer implements NotDirectlyRendered {
        public Length height;
        public String href;
        public Boolean patternContentUnitsAreUser;
        public Matrix patternTransform;
        public Boolean patternUnitsAreUser;
        public Length width;
        public Length x;
        public Length y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "pattern";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class PolyLine extends GraphicsElement {
        public float[] points;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public String getNodeName() {
            return "polyline";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Polygon extends PolyLine {
        @Override // com.caverock.androidsvg.SVG.PolyLine, com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "polygon";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Rect extends GraphicsElement {
        public Length height;
        public Length rx;
        public Length ry;
        public Length width;
        public Length x;
        public Length y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "rect";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Style implements Cloneable {
        public ImageLoader$Builder clip;
        public String clipPath;
        public FillRule clipRule;
        public Colour color;
        public TextDirection direction;
        public Boolean display;
        public SvgPaint fill;
        public Float fillOpacity;
        public FillRule fillRule;
        public ArrayList fontFamily;
        public Length fontSize;
        public FontStyle fontStyle;
        public Integer fontWeight;
        public RenderQuality imageRendering;
        public String markerEnd;
        public String markerMid;
        public String markerStart;
        public String mask;
        public Float opacity;
        public Boolean overflow;
        public SvgPaint solidColor;
        public Float solidOpacity;
        public long specifiedFlags = 0;
        public SvgPaint stopColor;
        public Float stopOpacity;
        public SvgPaint stroke;
        public Length[] strokeDashArray;
        public Length strokeDashOffset;
        public LineCap strokeLineCap;
        public LineJoin strokeLineJoin;
        public Float strokeMiterLimit;
        public Float strokeOpacity;
        public Length strokeWidth;
        public TextAnchor textAnchor;
        public TextDecoration textDecoration;
        public VectorEffect vectorEffect;
        public SvgPaint viewportFill;
        public Float viewportFillOpacity;
        public Boolean visibility;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class FillRule {
            private static final /* synthetic */ FillRule[] $VALUES;
            public static final FillRule EvenOdd;
            public static final FillRule NonZero;

            static {
                FillRule fillRule = new FillRule("NonZero", 0);
                NonZero = fillRule;
                FillRule fillRule2 = new FillRule("EvenOdd", 1);
                EvenOdd = fillRule2;
                $VALUES = new FillRule[]{fillRule, fillRule2};
            }

            public static FillRule valueOf(String str) {
                return (FillRule) Enum.valueOf(FillRule.class, str);
            }

            public static FillRule[] values() {
                return (FillRule[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class FontStyle {
            private static final /* synthetic */ FontStyle[] $VALUES;
            public static final FontStyle Italic;
            public static final FontStyle Normal;
            public static final FontStyle Oblique;

            static {
                FontStyle fontStyle = new FontStyle("Normal", 0);
                Normal = fontStyle;
                FontStyle fontStyle2 = new FontStyle("Italic", 1);
                Italic = fontStyle2;
                FontStyle fontStyle3 = new FontStyle("Oblique", 2);
                Oblique = fontStyle3;
                $VALUES = new FontStyle[]{fontStyle, fontStyle2, fontStyle3};
            }

            public static FontStyle valueOf(String str) {
                return (FontStyle) Enum.valueOf(FontStyle.class, str);
            }

            public static FontStyle[] values() {
                return (FontStyle[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LineCap {
            private static final /* synthetic */ LineCap[] $VALUES;
            public static final LineCap Butt;
            public static final LineCap Round;
            public static final LineCap Square;

            static {
                LineCap lineCap = new LineCap("Butt", 0);
                Butt = lineCap;
                LineCap lineCap2 = new LineCap("Round", 1);
                Round = lineCap2;
                LineCap lineCap3 = new LineCap("Square", 2);
                Square = lineCap3;
                $VALUES = new LineCap[]{lineCap, lineCap2, lineCap3};
            }

            public static LineCap valueOf(String str) {
                return (LineCap) Enum.valueOf(LineCap.class, str);
            }

            public static LineCap[] values() {
                return (LineCap[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LineJoin {
            private static final /* synthetic */ LineJoin[] $VALUES;
            public static final LineJoin Bevel;
            public static final LineJoin Miter;
            public static final LineJoin Round;

            static {
                LineJoin lineJoin = new LineJoin("Miter", 0);
                Miter = lineJoin;
                LineJoin lineJoin2 = new LineJoin("Round", 1);
                Round = lineJoin2;
                LineJoin lineJoin3 = new LineJoin("Bevel", 2);
                Bevel = lineJoin3;
                $VALUES = new LineJoin[]{lineJoin, lineJoin2, lineJoin3};
            }

            public static LineJoin valueOf(String str) {
                return (LineJoin) Enum.valueOf(LineJoin.class, str);
            }

            public static LineJoin[] values() {
                return (LineJoin[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class RenderQuality {
            private static final /* synthetic */ RenderQuality[] $VALUES;
            public static final RenderQuality auto;
            public static final RenderQuality optimizeQuality;
            public static final RenderQuality optimizeSpeed;

            static {
                RenderQuality renderQuality = new RenderQuality("auto", 0);
                auto = renderQuality;
                RenderQuality renderQuality2 = new RenderQuality("optimizeQuality", 1);
                optimizeQuality = renderQuality2;
                RenderQuality renderQuality3 = new RenderQuality("optimizeSpeed", 2);
                optimizeSpeed = renderQuality3;
                $VALUES = new RenderQuality[]{renderQuality, renderQuality2, renderQuality3};
            }

            public static RenderQuality valueOf(String str) {
                return (RenderQuality) Enum.valueOf(RenderQuality.class, str);
            }

            public static RenderQuality[] values() {
                return (RenderQuality[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class TextAnchor {
            private static final /* synthetic */ TextAnchor[] $VALUES;
            public static final TextAnchor End;
            public static final TextAnchor Middle;
            public static final TextAnchor Start;

            static {
                TextAnchor textAnchor = new TextAnchor("Start", 0);
                Start = textAnchor;
                TextAnchor textAnchor2 = new TextAnchor("Middle", 1);
                Middle = textAnchor2;
                TextAnchor textAnchor3 = new TextAnchor("End", 2);
                End = textAnchor3;
                $VALUES = new TextAnchor[]{textAnchor, textAnchor2, textAnchor3};
            }

            public static TextAnchor valueOf(String str) {
                return (TextAnchor) Enum.valueOf(TextAnchor.class, str);
            }

            public static TextAnchor[] values() {
                return (TextAnchor[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class TextDecoration {
            private static final /* synthetic */ TextDecoration[] $VALUES;
            public static final TextDecoration Blink;
            public static final TextDecoration LineThrough;
            public static final TextDecoration None;
            public static final TextDecoration Overline;
            public static final TextDecoration Underline;

            static {
                TextDecoration textDecoration = new TextDecoration("None", 0);
                None = textDecoration;
                TextDecoration textDecoration2 = new TextDecoration("Underline", 1);
                Underline = textDecoration2;
                TextDecoration textDecoration3 = new TextDecoration("Overline", 2);
                Overline = textDecoration3;
                TextDecoration textDecoration4 = new TextDecoration("LineThrough", 3);
                LineThrough = textDecoration4;
                TextDecoration textDecoration5 = new TextDecoration("Blink", 4);
                Blink = textDecoration5;
                $VALUES = new TextDecoration[]{textDecoration, textDecoration2, textDecoration3, textDecoration4, textDecoration5};
            }

            public static TextDecoration valueOf(String str) {
                return (TextDecoration) Enum.valueOf(TextDecoration.class, str);
            }

            public static TextDecoration[] values() {
                return (TextDecoration[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class TextDirection {
            private static final /* synthetic */ TextDirection[] $VALUES;
            public static final TextDirection LTR;
            public static final TextDirection RTL;

            static {
                TextDirection textDirection = new TextDirection("LTR", 0);
                LTR = textDirection;
                TextDirection textDirection2 = new TextDirection("RTL", 1);
                RTL = textDirection2;
                $VALUES = new TextDirection[]{textDirection, textDirection2};
            }

            public static TextDirection valueOf(String str) {
                return (TextDirection) Enum.valueOf(TextDirection.class, str);
            }

            public static TextDirection[] values() {
                return (TextDirection[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class VectorEffect {
            private static final /* synthetic */ VectorEffect[] $VALUES;
            public static final VectorEffect NonScalingStroke;
            public static final VectorEffect None;

            static {
                VectorEffect vectorEffect = new VectorEffect("None", 0);
                None = vectorEffect;
                VectorEffect vectorEffect2 = new VectorEffect("NonScalingStroke", 1);
                NonScalingStroke = vectorEffect2;
                $VALUES = new VectorEffect[]{vectorEffect, vectorEffect2};
            }

            public static VectorEffect valueOf(String str) {
                return (VectorEffect) Enum.valueOf(VectorEffect.class, str);
            }

            public static VectorEffect[] values() {
                return (VectorEffect[]) $VALUES.clone();
            }
        }

        public static Style getDefaultStyle() {
            Style style = new Style();
            style.specifiedFlags = -1L;
            Colour colour = Colour.BLACK;
            style.fill = colour;
            FillRule fillRule = FillRule.NonZero;
            style.fillRule = fillRule;
            Float valueOf = Float.valueOf(1.0f);
            style.fillOpacity = valueOf;
            style.stroke = null;
            style.strokeOpacity = valueOf;
            style.strokeWidth = new Length(1.0f);
            style.strokeLineCap = LineCap.Butt;
            style.strokeLineJoin = LineJoin.Miter;
            style.strokeMiterLimit = Float.valueOf(4.0f);
            style.strokeDashArray = null;
            style.strokeDashOffset = new Length(RecyclerView.DECELERATION_RATE);
            style.opacity = valueOf;
            style.color = colour;
            style.fontFamily = null;
            style.fontSize = new Length(12.0f, Unit.pt);
            style.fontWeight = 400;
            style.fontStyle = FontStyle.Normal;
            style.textDecoration = TextDecoration.None;
            style.direction = TextDirection.LTR;
            style.textAnchor = TextAnchor.Start;
            Boolean bool = Boolean.TRUE;
            style.overflow = bool;
            style.clip = null;
            style.markerStart = null;
            style.markerMid = null;
            style.markerEnd = null;
            style.display = bool;
            style.visibility = bool;
            style.stopColor = colour;
            style.stopOpacity = valueOf;
            style.clipPath = null;
            style.clipRule = fillRule;
            style.mask = null;
            style.solidColor = null;
            style.solidOpacity = valueOf;
            style.viewportFill = null;
            style.viewportFillOpacity = valueOf;
            style.vectorEffect = VectorEffect.None;
            style.imageRendering = RenderQuality.auto;
            return style;
        }

        public final Object clone() {
            Style style = (Style) super.clone();
            Length[] lengthArr = this.strokeDashArray;
            if (lengthArr != null) {
                style.strokeDashArray = (Length[]) lengthArr.clone();
            }
            return style;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Svg extends SvgViewBoxContainer {
        public Length height;
        public Length width;
        public Length x;
        public Length y;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "svg";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SvgConditional {
        String getRequiredExtensions();

        Set getRequiredFeatures();

        Set getRequiredFonts();

        Set getRequiredFormats();

        Set getSystemLanguage();

        void setRequiredExtensions(String str);

        void setRequiredFeatures(HashSet hashSet);

        void setRequiredFonts(HashSet hashSet);

        void setRequiredFormats(HashSet hashSet);

        void setSystemLanguage(HashSet hashSet);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SvgContainer {
        void addChild(SvgObject svgObject);

        List getChildren();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgElement extends SvgElementBase {
        public Box boundingBox = null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgElementBase extends SvgObject {
        public String id = null;
        public Boolean spacePreserve = null;
        public Style baseStyle = null;
        public Style style = null;
        public ArrayList classNames = null;

        public final String toString() {
            return getNodeName();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SvgLinearGradient extends GradientElement {
        public Length x1;
        public Length x2;
        public Length y1;
        public Length y2;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "linearGradient";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgObject {
        public SVG document;
        public SvgContainer parent;

        public abstract String getNodeName();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgPaint implements Cloneable {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgPreserveAspectRatioContainer extends SvgConditionalContainer {
        public PreserveAspectRatio preserveAspectRatio = null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SvgRadialGradient extends GradientElement {
        public Length cx;
        public Length cy;
        public Length fx;
        public Length fy;
        public Length r;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "radialGradient";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgViewBoxContainer extends SvgPreserveAspectRatioContainer {
        public Box viewBox;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Switch extends Group {
        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "switch";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Symbol extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "symbol";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TRef extends TextContainer implements TextChild {
        public String href;
        public Text textRoot;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "tref";
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final Text getTextRoot() {
            return this.textRoot;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TSpan extends TextPositionedContainer implements TextChild {
        public Text textRoot;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "tspan";
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final Text getTextRoot() {
            return this.textRoot;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Text extends TextPositionedContainer implements HasTransform {
        public Matrix transform;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "text";
        }

        @Override // com.caverock.androidsvg.SVG.HasTransform
        public final void setTransform(Matrix matrix) {
            this.transform = matrix;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface TextChild {
        Text getTextRoot();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class TextContainer extends SvgConditionalContainer {
        @Override // com.caverock.androidsvg.SVG.SvgConditionalContainer, com.caverock.androidsvg.SVG.SvgContainer
        public final void addChild(SvgObject svgObject) {
            if (svgObject instanceof TextChild) {
                this.children.add(svgObject);
                return;
            }
            throw new SVGParseException("Text content elements cannot contain " + svgObject + " elements.");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextPath extends TextContainer implements TextChild {
        public String href;
        public Length startOffset;
        public Text textRoot;

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "textPath";
        }

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final Text getTextRoot() {
            return this.textRoot;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class TextPositionedContainer extends TextContainer {
        public ArrayList dx;
        public ArrayList dy;
        public ArrayList x;
        public ArrayList y;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextSequence extends SvgObject implements TextChild {
        public String text;

        @Override // com.caverock.androidsvg.SVG.TextChild
        public final Text getTextRoot() {
            return null;
        }

        public final String toString() {
            return Animation.CC.m(new StringBuilder("TextChild: '"), this.text, "'");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Unit {
        private static final /* synthetic */ Unit[] $VALUES;
        public static final Unit cm;
        public static final Unit em;
        public static final Unit ex;
        public static final Unit in;
        public static final Unit mm;
        public static final Unit pc;
        public static final Unit percent;
        public static final Unit pt;
        public static final Unit px;

        static {
            Unit unit = new Unit("px", 0);
            px = unit;
            Unit unit2 = new Unit("em", 1);
            em = unit2;
            Unit unit3 = new Unit("ex", 2);
            ex = unit3;
            Unit unit4 = new Unit("in", 3);
            in = unit4;
            Unit unit5 = new Unit("cm", 4);
            cm = unit5;
            Unit unit6 = new Unit("mm", 5);
            mm = unit6;
            Unit unit7 = new Unit("pt", 6);
            pt = unit7;
            Unit unit8 = new Unit("pc", 7);
            pc = unit8;
            Unit unit9 = new Unit("percent", 8);
            percent = unit9;
            $VALUES = new Unit[]{unit, unit2, unit3, unit4, unit5, unit6, unit7, unit8, unit9};
        }

        public static Unit valueOf(String str) {
            return (Unit) Enum.valueOf(Unit.class, str);
        }

        public static Unit[] values() {
            return (Unit[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Use extends Group {
        public Length height;
        public String href;
        public Length width;
        public Length x;
        public Length y;

        @Override // com.caverock.androidsvg.SVG.Group, com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "use";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class View extends SvgViewBoxContainer implements NotDirectlyRendered {
        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "view";
        }
    }

    public SVG(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 7:
                this.rootElement = new AtomicReference(Expect_jvmKt.emptyThreadMap);
                this.cssRules = new Object();
                break;
            case 10:
                this.rootElement = new HintHandler(4);
                this.cssRules = new HintHandler(4);
                this.idToElementMap = new HintHandler(4);
                break;
            case IMAGE_VALUE:
                this.rootElement = new WeakHashMap();
                this.cssRules = new WeakHashMap();
                this.idToElementMap = new WeakHashMap();
                break;
            case RADIO_BUTTON_VALUE:
                this.rootElement = new MutableScatterMap();
                break;
            case SIZE_BOX_VALUE:
                this.rootElement = new IndexingIterable();
                StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(null);
                this.cssRules = MutableStateFlow;
                this.idToElementMap = new ReadonlyStateFlow(MutableStateFlow);
                break;
            case 23:
                LoadState.NotLoading notLoading = LoadState.NotLoading.Incomplete;
                this.rootElement = notLoading;
                this.cssRules = notLoading;
                this.idToElementMap = notLoading;
                break;
            default:
                long[] jArr = ScatterMapKt.EmptyGroup;
                this.rootElement = new MutableScatterMap();
                break;
        }
    }

    public static boolean delete(Editable editable, KeyEvent keyEvent, boolean z) {
        TypefaceEmojiSpan[] typefaceEmojiSpanArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (typefaceEmojiSpanArr = (TypefaceEmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, TypefaceEmojiSpan.class)) != null && typefaceEmojiSpanArr.length > 0) {
                for (TypefaceEmojiSpan typefaceEmojiSpan : typefaceEmojiSpanArr) {
                    int spanStart = editable.getSpanStart(typefaceEmojiSpan);
                    int spanEnd = editable.getSpanEnd(typefaceEmojiSpan);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SvgElementBase getElementById(SvgContainer svgContainer, String str) {
        SvgElementBase elementById;
        SvgElementBase svgElementBase = (SvgElementBase) svgContainer;
        if (str.equals(svgElementBase.id)) {
            return svgElementBase;
        }
        for (Object obj : svgContainer.getChildren()) {
            if (obj instanceof SvgElementBase) {
                SvgElementBase svgElementBase2 = (SvgElementBase) obj;
                if (str.equals(svgElementBase2.id)) {
                    return svgElementBase2;
                }
                if ((obj instanceof SvgContainer) && (elementById = getElementById((SvgContainer) obj, str)) != null) {
                    return elementById;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
    
        if (r10 != (-1)) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVG.handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection, android.text.Editable, int, int, boolean):boolean");
    }

    public static SVG obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new SVG(2, context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public void add(LayoutNode layoutNode, Invalidation invalidation) {
        HintHandler hintHandler = (HintHandler) this.rootElement;
        HintHandler hintHandler2 = (HintHandler) this.cssRules;
        HintHandler hintHandler3 = (HintHandler) this.idToElementMap;
        int i = DepthSortedSetsForDifferentPasses$WhenMappings.$EnumSwitchMapping$0[invalidation.ordinal()];
        if (i == 1) {
            hintHandler.add(layoutNode);
            hintHandler3.add(layoutNode);
            return;
        }
        if (i == 2) {
            hintHandler2.add(layoutNode);
            hintHandler3.add(layoutNode);
            return;
        }
        if (i == 3) {
            if (layoutNode.lookaheadRoot != null) {
                hintHandler3.add(layoutNode);
                return;
            } else {
                hintHandler.add(layoutNode);
                return;
            }
        }
        if (i != 4) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        } else if (layoutNode.lookaheadRoot != null) {
            hintHandler3.add(layoutNode);
        } else {
            hintHandler2.add(layoutNode);
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(Object obj, Function2 function2) {
        ((MutableIntList) this.rootElement).add(7);
        MutableObjectList mutableObjectList = (MutableObjectList) this.cssRules;
        mutableObjectList.add(function2);
        mutableObjectList.add(obj);
    }

    public boolean contains(LayoutNode layoutNode) {
        return !(layoutNode.lookaheadRoot == null) && (((SortedSet) ((HintHandler) this.rootElement).state).contains(layoutNode) || ((SortedSet) ((HintHandler) this.cssRules).state).contains(layoutNode));
    }

    @Override // androidx.compose.runtime.Applier
    public void down(Object obj) {
        ((MutableIntList) this.rootElement).add(1);
        ((MutableObjectList) this.cssRules).add(obj);
    }

    public LoadState get(LoadType loadType) {
        loadType.getClass();
        int i = MutableLoadStateCollection$WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return (LoadState) this.rootElement;
        }
        if (i == 2) {
            return (LoadState) this.idToElementMap;
        }
        if (i == 3) {
            return (LoadState) this.cssRules;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public Canvas getCanvas() {
        return ((CanvasDrawScope) this.idToElementMap).drawParams.canvas;
    }

    public ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) this.cssRules;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = FileUtil.getColorStateList((Context) this.rootElement, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getContentUri() {
        return (Uri) this.rootElement;
    }

    public Density getDensity() {
        return ((CanvasDrawScope) this.idToElementMap).drawParams.density;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public ClipDescription getDescription() {
        return (ClipDescription) this.cssRules;
    }

    public Box getDocumentDimensions() {
        Unit unit;
        Unit unit2;
        Unit unit3;
        Unit unit4;
        float f;
        Unit unit5;
        Svg svg = (Svg) this.rootElement;
        Length length = svg.width;
        Length length2 = svg.height;
        if (length == null || length.isZero() || (unit = length.unit) == (unit2 = Unit.percent) || unit == (unit3 = Unit.em) || unit == (unit4 = Unit.ex)) {
            return new Box(-1.0f, -1.0f, -1.0f, -1.0f);
        }
        float floatValue = length.floatValue();
        if (length2 == null) {
            Box box = ((Svg) this.rootElement).viewBox;
            f = box != null ? (box.height * floatValue) / box.width : floatValue;
        } else {
            if (length2.isZero() || (unit5 = length2.unit) == unit2 || unit5 == unit3 || unit5 == unit4) {
                return new Box(-1.0f, -1.0f, -1.0f, -1.0f);
            }
            f = length2.floatValue();
        }
        return new Box(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, floatValue, f);
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.cssRules;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : TuplesKt.getDrawable((Context) this.rootElement, resourceId);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        Drawable drawable;
        if (!((TypedArray) this.cssRules).hasValue(i) || (resourceId = ((TypedArray) this.cssRules).getResourceId(i, 0)) == 0) {
            return null;
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = (Context) this.rootElement;
        synchronized (appCompatDrawableManager) {
            drawable = appCompatDrawableManager.mResourceManager.getDrawable(context, resourceId, true);
        }
        return drawable;
    }

    public int getFirstVisibleLineIndex() {
        if (getLayoutInfo().visiblePagesInfo.isEmpty()) {
            return -1;
        }
        long j = ((MeasuredPage) CollectionsKt.first(getLayoutInfo().visiblePagesInfo)).index - getLayoutInfo().beyondViewportPageCount;
        if (j < 0) {
            j = 0;
        }
        return (int) j;
    }

    public Typeface getFont(int i, int i2, AppCompatTextHelper.AnonymousClass1 anonymousClass1) {
        int resourceId = ((TypedArray) this.cssRules).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        TypedValue typedValue = (TypedValue) this.idToElementMap;
        if (typedValue == null) {
            typedValue = new TypedValue();
            this.idToElementMap = typedValue;
        }
        TypedValue typedValue2 = typedValue;
        Context context = (Context) this.rootElement;
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        if (context.isRestricted()) {
            return null;
        }
        return ResourcesCompat.loadFont(context, resourceId, typedValue2, i2, anonymousClass1, true, false);
    }

    public boolean getHasVisibleItems() {
        return !getLayoutInfo().visiblePagesInfo.isEmpty();
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
    public int getHeight() {
        int i = ((ExtendedFloatingActionButton) this.idToElementMap).originalHeight;
        return i == -1 ? ((FormBody.Builder) this.rootElement).getHeight() : (i == 0 || i == -2) ? ((ExtendedFloatingActionButton.AnonymousClass1) this.cssRules).this$0.getMeasuredHeight() : i;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Object getInputContentInfo() {
        return null;
    }

    public int getLastVisibleLineIndex() {
        if (getLayoutInfo().visiblePagesInfo.isEmpty()) {
            return -1;
        }
        long j = ((MeasuredPage) CollectionsKt.last(getLayoutInfo().visiblePagesInfo)).index + getLayoutInfo().beyondViewportPageCount;
        long totalItemsCount = getTotalItemsCount() - 1;
        if (j > totalItemsCount) {
            j = totalItemsCount;
        }
        return (int) j;
    }

    public LayoutDirection getLayoutDirection() {
        return ((CanvasDrawScope) this.idToElementMap).drawParams.layoutDirection;
    }

    public PagerMeasureResult getLayoutInfo() {
        PagerMeasureResult pagerMeasureResult = (PagerMeasureResult) this.cssRules;
        if (pagerMeasureResult != null) {
            return pagerMeasureResult;
        }
        Intrinsics.throwUninitializedPropertyAccessException("layoutInfo");
        throw null;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
    public ViewGroup.LayoutParams getLayoutParams() {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.idToElementMap;
        int i = extendedFloatingActionButton.originalWidth;
        if (i == 0) {
            i = -2;
        }
        int i2 = extendedFloatingActionButton.originalHeight;
        return new ViewGroup.LayoutParams(i, i2 != 0 ? i2 : -2);
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getLinkUri() {
        return (Uri) this.idToElementMap;
    }

    public int getMainAxisExtraSpaceEnd() {
        if (getLayoutInfo().visiblePagesInfo.isEmpty()) {
            return 0;
        }
        return Math.abs(((((MeasuredPage) CollectionsKt.last(getLayoutInfo().visiblePagesInfo)).offset + getLayoutInfo().pageSize) + getLayoutInfo().pageSpacing) - getLayoutInfo().viewportEndOffset);
    }

    public int getMainAxisExtraSpaceStart() {
        if (getLayoutInfo().visiblePagesInfo.isEmpty()) {
            return 0;
        }
        int i = ((MeasuredPage) CollectionsKt.first(getLayoutInfo().visiblePagesInfo)).offset + (-getLayoutInfo().viewportStartOffset);
        return Math.abs(i <= 0 ? i : 0);
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
    public int getPaddingEnd() {
        return ((ExtendedFloatingActionButton) this.idToElementMap).extendedPaddingEnd;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
    public int getPaddingStart() {
        return ((ExtendedFloatingActionButton) this.idToElementMap).extendedPaddingStart;
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public long m796getSizeNHjbRc() {
        return ((CanvasDrawScope) this.idToElementMap).drawParams.size;
    }

    public int getTotalItemsCount() {
        return ((Number) ((PagerState$$ExternalSyntheticLambda2) this.rootElement).invoke()).intValue();
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
    public int getWidth() {
        int i = ((ExtendedFloatingActionButton) this.idToElementMap).originalWidth;
        return i == -1 ? ((FormBody.Builder) this.rootElement).getWidth() : (i == 0 || i == -2) ? ((ExtendedFloatingActionButton.AnonymousClass1) this.cssRules).getWidth() : i;
    }

    public boolean hasGlyph(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if ((typefaceEmojiRasterizer.mCache & 3) == 0) {
            DefaultGlyphChecker defaultGlyphChecker = (DefaultGlyphChecker) this.idToElementMap;
            MetadataItem metadataItem = typefaceEmojiRasterizer.getMetadataItem();
            int __offset = metadataItem.__offset(8);
            if (__offset != 0) {
                ((ByteBuffer) metadataItem.bb).getShort(__offset + metadataItem.bb_pos);
            }
            defaultGlyphChecker.getClass();
            ThreadLocal threadLocal = DefaultGlyphChecker.sStringBuilder;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            boolean hasGlyph = defaultGlyphChecker.mTextPaint.hasGlyph(sb.toString());
            int i3 = typefaceEmojiRasterizer.mCache & 4;
            typefaceEmojiRasterizer.mCache = hasGlyph ? i3 | 2 : i3 | 1;
        }
        return (typefaceEmojiRasterizer.mCache & 3) == 2;
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i, Object obj) {
        MutableIntList mutableIntList = (MutableIntList) this.rootElement;
        mutableIntList.add(5);
        mutableIntList.add(i);
        ((MutableObjectList) this.cssRules).add(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, Object obj) {
        MutableIntList mutableIntList = (MutableIntList) this.rootElement;
        mutableIntList.add(6);
        mutableIntList.add(i);
        ((MutableObjectList) this.cssRules).add(obj);
    }

    public boolean isNotEmpty() {
        return !(((SortedSet) ((HintHandler) this.rootElement).state).isEmpty() && ((SortedSet) ((HintHandler) this.idToElementMap).state).isEmpty() && ((SortedSet) ((HintHandler) this.cssRules).state).isEmpty());
    }

    public boolean isStaleResolvedFont() {
        if (((State) this.rootElement).getValue() != this.idToElementMap) {
            return true;
        }
        SVG svg = (SVG) this.cssRules;
        return svg != null && svg.isStaleResolvedFont();
    }

    public boolean measure(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.cssRules;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        int[] iArr = constraintWidget.mResolvedMatchConstraintDefault;
        basicMeasure$Measure.horizontalBehavior = dimensionBehaviourArr[0];
        basicMeasure$Measure.verticalBehavior = dimensionBehaviourArr[1];
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = basicMeasure$Measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = basicMeasure$Measure.verticalBehavior == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > RecyclerView.DECELERATION_RATE;
        if (z3 && iArr[0] == 4) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z4 && iArr[1] == 4) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        constraintWidget.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
        basicMeasure$Measure.measureStrategy = 0;
        return basicMeasure$Measure.measuredNeedsSolverPass;
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        MutableIntList mutableIntList = (MutableIntList) this.rootElement;
        mutableIntList.add(3);
        mutableIntList.add(i);
        mutableIntList.add(i2);
        mutableIntList.add(i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #0 {all -> 0x0051, blocks: (B:11:0x0048, B:13:0x004e), top: B:10:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object onFinish(kotlinx.coroutines.Job r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.SingleRunner$Holder$onFinish$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.SingleRunner$Holder$onFinish$1 r0 = (androidx.paging.SingleRunner$Holder$onFinish$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SingleRunner$Holder$onFinish$1 r0 = new androidx.paging.SingleRunner$Holder$onFinish$1
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
            kotlinx.coroutines.Job r0 = r0.L$0
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
            java.lang.Object r7 = r5.cssRules
            kotlinx.coroutines.sync.MutexImpl r7 = (kotlinx.coroutines.sync.MutexImpl) r7
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = r7.lock(r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            java.lang.Object r0 = r5.idToElementMap     // Catch: java.lang.Throwable -> L51
            kotlinx.coroutines.Job r0 = (kotlinx.coroutines.Job) r0     // Catch: java.lang.Throwable -> L51
            if (r6 != r0) goto L53
            r5.idToElementMap = r4     // Catch: java.lang.Throwable -> L51
            goto L53
        L51:
            r5 = move-exception
            goto L59
        L53:
            r7.unlock(r4)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L59:
            r7.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVG.onFinish(kotlinx.coroutines.Job, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void playTo(AbstractApplier abstractApplier, ActivityLoginBinding activityLoginBinding) {
        Exception exc;
        Exception exc2;
        int i;
        int i2;
        MutableIntList mutableIntList = (MutableIntList) this.rootElement;
        int i3 = mutableIntList._size;
        MutableObjectList mutableObjectList = (MutableObjectList) this.cssRules;
        MutableObjectList mutableObjectList2 = new MutableObjectList();
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i4 + 1;
            try {
                try {
                    switch (mutableIntList.get(i4)) {
                        case 0:
                            abstractApplier.up();
                            i4 = i6;
                        case 1:
                            int i7 = i5 + 1;
                            abstractApplier.down(mutableObjectList.get(i5));
                            i5 = i7;
                            i4 = i6;
                        case 2:
                            int i8 = i4 + 2;
                            i4 += 3;
                            abstractApplier.remove(mutableIntList.get(i6), mutableIntList.get(i8));
                        case 3:
                            int i9 = i4 + 2;
                            try {
                                i = i4 + 3;
                            } catch (Exception e) {
                                exc = e;
                                i4 = i9;
                            }
                            try {
                                i4 += 4;
                                abstractApplier.move(mutableIntList.get(i6), mutableIntList.get(i9), mutableIntList.get(i));
                            } catch (Exception e2) {
                                exc = e2;
                                i4 = i;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                            }
                        case 4:
                            abstractApplier.clear();
                            i4 = i6;
                        case 5:
                            i4 += 2;
                            i2 = i5 + 1;
                            abstractApplier.insertBottomUp(mutableIntList.get(i6), mutableObjectList.get(i5));
                            i5 = i2;
                        case 6:
                            i4 += 2;
                            try {
                                i2 = i5 + 1;
                                abstractApplier.insertTopDown(mutableIntList.get(i6), mutableObjectList.get(i5));
                                i5 = i2;
                            } catch (Exception e3) {
                                exc2 = e3;
                                exc = exc2;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                            }
                        case 7:
                            int i10 = i5 + 1;
                            Object obj = mutableObjectList.get(i5);
                            obj.getClass();
                            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj);
                            i5 += 2;
                            ((Function2) obj).invoke(abstractApplier.getCurrent(), mutableObjectList.get(i10));
                            i4 = i6;
                        case 8:
                            Object obj2 = abstractApplier.current;
                            if (obj2 instanceof ComposeNodeLifecycleCallback) {
                                ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) obj2;
                                if (((MutableVector) activityLoginBinding.loginButton).remove(composeNodeLifecycleCallback)) {
                                    composeNodeLifecycleCallback.onDeactivate();
                                }
                            }
                            mutableObjectList2.add(obj2);
                            abstractApplier.reuse();
                            i4 = i6;
                        default:
                            i4 = i6;
                    }
                } catch (Exception e4) {
                    exc2 = e4;
                    i4 = i6;
                    exc = exc2;
                    throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i4 - 1, exc);
                }
            } catch (Throwable th) {
                abstractApplier.onEndChanges();
                throw th;
            }
        }
        if (i5 != mutableObjectList._size) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        mutableIntList._size = 0;
        abstractApplier.onEndChanges();
    }

    public void postDispatchRunnable(Lifecycle$Event lifecycle$Event) {
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable = (ServiceLifecycleDispatcher$DispatchRunnable) this.idToElementMap;
        if (serviceLifecycleDispatcher$DispatchRunnable != null) {
            serviceLifecycleDispatcher$DispatchRunnable.run();
        }
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable2 = new ServiceLifecycleDispatcher$DispatchRunnable((LifecycleRegistry) this.rootElement, lifecycle$Event);
        this.idToElementMap = serviceLifecycleDispatcher$DispatchRunnable2;
        ((Handler) this.cssRules).postAtFrontOfQueue(serviceLifecycleDispatcher$DispatchRunnable2);
    }

    public Object process(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessor$EmojiProcessCallback emojiProcessor$EmojiProcessCallback) {
        int i4;
        char c;
        EmojiProcessor$ProcessorSm emojiProcessor$ProcessorSm = new EmojiProcessor$ProcessorSm((MetadataRepo$Node) ((ImageLoader$Builder) this.cssRules).componentRegistry);
        int codePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean z2 = true;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                MetadataRepo$Node metadataRepo$Node = (MetadataRepo$Node) emojiProcessor$ProcessorSm.mCurrentNode.mChildren.get(codePointAt);
                if (emojiProcessor$ProcessorSm.mState == 2) {
                    if (metadataRepo$Node != null) {
                        emojiProcessor$ProcessorSm.mCurrentNode = metadataRepo$Node;
                        emojiProcessor$ProcessorSm.mCurrentDepth++;
                    } else {
                        if (codePointAt == 65038) {
                            emojiProcessor$ProcessorSm.reset();
                        } else if (codePointAt != 65039) {
                            MetadataRepo$Node metadataRepo$Node2 = emojiProcessor$ProcessorSm.mCurrentNode;
                            if (metadataRepo$Node2.mData != null) {
                                if (emojiProcessor$ProcessorSm.mCurrentDepth != 1) {
                                    emojiProcessor$ProcessorSm.mFlushNode = metadataRepo$Node2;
                                    emojiProcessor$ProcessorSm.reset();
                                } else if (emojiProcessor$ProcessorSm.shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                                    emojiProcessor$ProcessorSm.mFlushNode = emojiProcessor$ProcessorSm.mCurrentNode;
                                    emojiProcessor$ProcessorSm.reset();
                                } else {
                                    emojiProcessor$ProcessorSm.reset();
                                }
                                c = 3;
                            } else {
                                emojiProcessor$ProcessorSm.reset();
                            }
                        }
                        c = 1;
                    }
                    c = 2;
                } else if (metadataRepo$Node == null) {
                    emojiProcessor$ProcessorSm.reset();
                    c = 1;
                } else {
                    emojiProcessor$ProcessorSm.mState = 2;
                    emojiProcessor$ProcessorSm.mCurrentNode = metadataRepo$Node;
                    emojiProcessor$ProcessorSm.mCurrentDepth = 1;
                    c = 2;
                }
                emojiProcessor$ProcessorSm.mLastCodepoint = codePointAt;
                if (c == 1) {
                    i6 = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (i6 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i6);
                    }
                } else if (c == 2) {
                    int charCount = Character.charCount(codePointAt) + i6;
                    if (charCount < i2) {
                        codePointAt = Character.codePointAt(charSequence, charCount);
                    }
                    i6 = charCount;
                } else if (c == 3) {
                    if (z || !hasGlyph(charSequence, i4, i6, emojiProcessor$ProcessorSm.mFlushNode.mData)) {
                        z2 = emojiProcessor$EmojiProcessCallback.handleEmoji(charSequence, i4, i6, emojiProcessor$ProcessorSm.mFlushNode.mData);
                        i5++;
                    }
                }
            }
        }
        if (emojiProcessor$ProcessorSm.mState == 2 && emojiProcessor$ProcessorSm.mCurrentNode.mData != null && ((emojiProcessor$ProcessorSm.mCurrentDepth > 1 || emojiProcessor$ProcessorSm.shouldUseEmojiPresentationStyleForSingleCodepoint()) && i5 < i3 && z2 && (z || !hasGlyph(charSequence, i4, i6, emojiProcessor$ProcessorSm.mCurrentNode.mData)))) {
            emojiProcessor$EmojiProcessCallback.handleEmoji(charSequence, i4, i6, emojiProcessor$ProcessorSm.mCurrentNode.mData);
        }
        return emojiProcessor$EmojiProcessCallback.getResult();
    }

    public void recycle() {
        ((TypedArray) this.cssRules).recycle();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        MutableIntList mutableIntList = (MutableIntList) this.rootElement;
        mutableIntList.add(2);
        mutableIntList.add(i);
        mutableIntList.add(i2);
    }

    public void removeMenuProvider(MenuProvider menuProvider) {
        ((CopyOnWriteArrayList) this.cssRules).remove(menuProvider);
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainer = (MenuHostHelper$LifecycleContainer) ((HashMap) this.idToElementMap).remove(menuProvider);
        if (menuHostHelper$LifecycleContainer != null) {
            menuHostHelper$LifecycleContainer.mLifecycle.removeObserver(menuHostHelper$LifecycleContainer.mObserver);
            menuHostHelper$LifecycleContainer.mObserver = null;
        }
        ((Runnable) this.rootElement).run();
    }

    public SvgElementBase resolveIRI(String str) {
        if (str != null) {
            if (str.startsWith("\"") && str.endsWith("\"")) {
                str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
            } else if (str.startsWith("'") && str.endsWith("'")) {
                str = str.substring(1, str.length() - 1).replace("\\'", "'");
            }
            String replace = str.replace("\\\n", "").replace("\\A", "\n");
            if (replace.length() > 1 && replace.startsWith("#")) {
                String substring = replace.substring(1);
                HashMap hashMap = (HashMap) this.idToElementMap;
                if (substring.length() == 0) {
                    return null;
                }
                if (substring.equals(((Svg) this.rootElement).id)) {
                    return (Svg) this.rootElement;
                }
                if (hashMap.containsKey(substring)) {
                    return (SvgElementBase) hashMap.get(substring);
                }
                SvgElementBase elementById = getElementById((Svg) this.rootElement, substring);
                hashMap.put(substring, elementById);
                return elementById;
            }
        }
        return null;
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        ((MutableIntList) this.rootElement).add(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [androidx.paging.LoadState] */
    public void set(LoadStates loadStates, LoadStates loadStates2) {
        Object value;
        LoadState loadState;
        LoadState loadState2;
        CombinedLoadStates combinedLoadStates;
        ?? r11;
        StateFlowImpl stateFlowImpl = (StateFlowImpl) this.cssRules;
        do {
            value = stateFlowImpl.getValue();
            CombinedLoadStates combinedLoadStates2 = (CombinedLoadStates) value;
            loadStates.getClass();
            LoadState loadState3 = loadStates.refresh;
            LoadState.NotLoading notLoading = LoadState.NotLoading.Incomplete;
            if (combinedLoadStates2 == null || (loadState = combinedLoadStates2.refresh) == null) {
                loadState = notLoading;
            }
            LoadState computeHelperState = FlowExtKt.computeHelperState(loadState, loadState3, loadState3, loadStates2 != null ? loadStates2.refresh : null);
            if (combinedLoadStates2 == null || (loadState2 = combinedLoadStates2.prepend) == null) {
                loadState2 = notLoading;
            }
            LoadState computeHelperState2 = FlowExtKt.computeHelperState(loadState2, loadState3, loadStates.prepend, loadStates2 != null ? loadStates2.prepend : null);
            if (combinedLoadStates2 != null && (r11 = combinedLoadStates2.append) != 0) {
                notLoading = r11;
            }
            combinedLoadStates = new CombinedLoadStates(computeHelperState, computeHelperState2, FlowExtKt.computeHelperState(notLoading, loadState3, loadStates.append, loadStates2 != null ? loadStates2.append : null), loadStates, loadStates2);
            if (Intrinsics.areEqual(combinedLoadStates2, combinedLoadStates)) {
                return;
            }
        } while (!stateFlowImpl.compareAndSet(value, combinedLoadStates));
        Iterator it = ((IndexingIterable) this.rootElement).iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(combinedLoadStates);
        }
    }

    public void setCanvas(Canvas canvas) {
        ((CanvasDrawScope) this.idToElementMap).drawParams.canvas = canvas;
    }

    public void setDensity(Density density) {
        ((CanvasDrawScope) this.idToElementMap).drawParams.density = density;
    }

    public void setLayoutDirection(LayoutDirection layoutDirection) {
        ((CanvasDrawScope) this.idToElementMap).drawParams.layoutDirection = layoutDirection;
    }

    /* renamed from: setSize-uvyYCjk, reason: not valid java name */
    public void m797setSizeuvyYCjk(long j) {
        ((CanvasDrawScope) this.idToElementMap).drawParams.size = j;
    }

    public LoadStates snapshot() {
        return new LoadStates((LoadState) this.rootElement, (LoadState) this.cssRules, (LoadState) this.idToElementMap);
    }

    public void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        constraintWidgetContainer.getClass();
        int i4 = constraintWidgetContainer.mMinWidth;
        int i5 = constraintWidgetContainer.mMinHeight;
        constraintWidgetContainer.mMinWidth = 0;
        constraintWidgetContainer.mMinHeight = 0;
        constraintWidgetContainer.setWidth(i2);
        constraintWidgetContainer.setHeight(i3);
        if (i4 < 0) {
            constraintWidgetContainer.mMinWidth = 0;
        } else {
            constraintWidgetContainer.mMinWidth = i4;
        }
        if (i5 < 0) {
            constraintWidgetContainer.mMinHeight = 0;
        } else {
            constraintWidgetContainer.mMinHeight = i5;
        }
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) this.idToElementMap;
        constraintWidgetContainer2.mPass = i;
        constraintWidgetContainer2.layout();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case RADIO_COLUMN_VALUE:
                String str = (String) this.idToElementMap;
                String str2 = (String) this.cssRules;
                StringBuilder sb = new StringBuilder("NavDeepLinkRequest{");
                Uri uri = (Uri) this.rootElement;
                if (uri != null) {
                    sb.append(" uri=");
                    sb.append(String.valueOf(uri));
                }
                if (str2 != null) {
                    sb.append(" action=");
                    sb.append(str2);
                }
                if (str != null) {
                    sb.append(" mimetype=");
                    sb.append(str);
                }
                sb.append(" }");
                return sb.toString();
            case 27:
                StringBuilder sb2 = new StringBuilder("[ClassStack (self-refs: ");
                ArrayList arrayList = (ArrayList) this.idToElementMap;
                sb2.append(arrayList == null ? "0" : String.valueOf(arrayList.size()));
                sb2.append(')');
                while (this != null) {
                    sb2.append(' ');
                    sb2.append(((Class) this.cssRules).getName());
                    this = (SVG) this.rootElement;
                }
                sb2.append(']');
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:12:0x002b, B:14:0x007d, B:22:0x0055, B:24:0x005b, B:26:0x0060, B:28:0x006e), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:12:0x002b, B:14:0x007d, B:22:0x0055, B:24:0x005b, B:26:0x0060, B:28:0x006e), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:12:0x002b, B:14:0x007d, B:22:0x0055, B:24:0x005b, B:26:0x0060, B:28:0x006e), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r9v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r9v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object tryEnqueue(kotlinx.coroutines.Job r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof androidx.paging.SingleRunner$Holder$tryEnqueue$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.paging.SingleRunner$Holder$tryEnqueue$1 r0 = (androidx.paging.SingleRunner$Holder$tryEnqueue$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SingleRunner$Holder$tryEnqueue$1 r0 = new androidx.paging.SingleRunner$Holder$tryEnqueue$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            kotlinx.coroutines.sync.Mutex r9 = r0.L$1
            kotlinx.coroutines.Job r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L2f
            goto L7c
        L2f:
            r8 = move-exception
            goto L87
        L31:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r5
        L37:
            kotlinx.coroutines.sync.Mutex r9 = r0.L$1
            kotlinx.coroutines.Job r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L55
        L3f:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r8.cssRules
            kotlinx.coroutines.sync.MutexImpl r10 = (kotlinx.coroutines.sync.MutexImpl) r10
            r0.L$0 = r9
            r0.L$1 = r10
            r0.label = r4
            java.lang.Object r2 = r10.lock(r0)
            if (r2 != r1) goto L53
            goto L7a
        L53:
            r2 = r9
            r9 = r10
        L55:
            java.lang.Object r10 = r8.idToElementMap     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.Job r10 = (kotlinx.coroutines.Job) r10     // Catch: java.lang.Throwable -> L2f
            if (r10 == 0) goto L5e
            r10.isActive()     // Catch: java.lang.Throwable -> L2f
        L5e:
            if (r10 == 0) goto L6c
            androidx.paging.SingleRunner$CancelIsolatedRunnerException r6 = new androidx.paging.SingleRunner$CancelIsolatedRunnerException     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r7 = r8.rootElement     // Catch: java.lang.Throwable -> L2f
            androidx.paging.HintHandler r7 = (androidx.paging.HintHandler) r7     // Catch: java.lang.Throwable -> L2f
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L2f
            r10.cancel(r6)     // Catch: java.lang.Throwable -> L2f
        L6c:
            if (r10 == 0) goto L7d
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L2f
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L2f
            r0.label = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r10 = r10.join(r0)     // Catch: java.lang.Throwable -> L2f
            if (r10 != r1) goto L7b
        L7a:
            return r1
        L7b:
            r0 = r2
        L7c:
            r2 = r0
        L7d:
            r8.idToElementMap = r2     // Catch: java.lang.Throwable -> L2f
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L2f
            r9.unlock(r5)
            return r8
        L87:
            r9.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVG.tryEnqueue(kotlinx.coroutines.Job, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void unregister() {
        MutableScatterMap mutableScatterMap = (MutableScatterMap) this.rootElement;
        String str = (String) this.cssRules;
        List list = (List) mutableScatterMap.remove(str);
        if (list != null) {
            list.remove((Function0) this.idToElementMap);
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        mutableScatterMap.set(str, list);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        ((MutableIntList) this.rootElement).add(0);
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList arrayList = (ArrayList) this.rootElement;
        arrayList.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i);
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 || dimensionBehaviourArr[1] == dimensionBehaviour2) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.mDependencyGraph.isRegularFile = true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Length implements Cloneable {
        public final Unit unit;
        public final float value;

        public Length(float f) {
            this.value = f;
            this.unit = Unit.px;
        }

        public final float floatValue(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.unit != Unit.percent) {
                return floatValueX(sVGAndroidRenderer);
            }
            SVGAndroidRenderer.RendererState rendererState = (SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state;
            Box box = rendererState.viewBox;
            if (box == null) {
                box = rendererState.viewPort;
            }
            float f = this.value;
            if (box == null) {
                return f;
            }
            float f2 = box.width;
            if (f2 != box.height) {
                f2 = (float) (Math.sqrt((r0 * r0) + (f2 * f2)) / 1.414213562373095d);
            }
            return (f * f2) / 100.0f;
        }

        public final float floatValueX(SVGAndroidRenderer sVGAndroidRenderer) {
            float textSize;
            int i = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()];
            float f = this.value;
            switch (i) {
                case 2:
                    textSize = ((SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state).fillPaint.getTextSize();
                    break;
                case 3:
                    textSize = ((SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state).fillPaint.getTextSize() / 2.0f;
                    break;
                case 4:
                    sVGAndroidRenderer.getClass();
                    return f * 96.0f;
                case 5:
                    sVGAndroidRenderer.getClass();
                    return (f * 96.0f) / 2.54f;
                case 6:
                    sVGAndroidRenderer.getClass();
                    return (f * 96.0f) / 25.4f;
                case 7:
                    sVGAndroidRenderer.getClass();
                    return (f * 96.0f) / 72.0f;
                case 8:
                    sVGAndroidRenderer.getClass();
                    return (f * 96.0f) / 6.0f;
                case 9:
                    SVGAndroidRenderer.RendererState rendererState = (SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state;
                    Box box = rendererState.viewBox;
                    if (box == null) {
                        box = rendererState.viewPort;
                    }
                    if (box != null) {
                        return (f * box.width) / 100.0f;
                    }
                default:
                    return f;
            }
            return textSize * f;
        }

        public final float floatValueY(SVGAndroidRenderer sVGAndroidRenderer) {
            if (this.unit != Unit.percent) {
                return floatValueX(sVGAndroidRenderer);
            }
            SVGAndroidRenderer.RendererState rendererState = (SVGAndroidRenderer.RendererState) sVGAndroidRenderer.state;
            Box box = rendererState.viewBox;
            if (box == null) {
                box = rendererState.viewPort;
            }
            float f = this.value;
            return box == null ? f : (f * box.height) / 100.0f;
        }

        public final boolean isNegative() {
            return this.value < RecyclerView.DECELERATION_RATE;
        }

        public final boolean isZero() {
            return this.value == RecyclerView.DECELERATION_RATE;
        }

        public final String toString() {
            return String.valueOf(this.value) + this.unit;
        }

        public Length(float f, Unit unit) {
            this.value = f;
            this.unit = unit;
        }

        public final float floatValue(SVGAndroidRenderer sVGAndroidRenderer, float f) {
            if (this.unit == Unit.percent) {
                return (this.value * f) / 100.0f;
            }
            return floatValueX(sVGAndroidRenderer);
        }

        public final float floatValue() {
            float f;
            float f2;
            int i = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$SVG$Unit[this.unit.ordinal()];
            float f3 = this.value;
            if (i == 1) {
                return f3;
            }
            switch (i) {
                case 4:
                    return f3 * 96.0f;
                case 5:
                    f = f3 * 96.0f;
                    f2 = 2.54f;
                    break;
                case 6:
                    f = f3 * 96.0f;
                    f2 = 25.4f;
                    break;
                case 7:
                    f = f3 * 96.0f;
                    f2 = 72.0f;
                    break;
                case 8:
                    f = f3 * 96.0f;
                    f2 = 6.0f;
                    break;
                default:
                    return f3;
            }
            return f / f2;
        }
    }

    public static SVG obtainStyledAttributes(int i, int i2, Context context, AttributeSet attributeSet, int[] iArr) {
        return new SVG(2, context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    @Override // androidx.compose.runtime.Applier
    public void onEndChanges() {
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void requestPermission() {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Box {
        public final /* synthetic */ int $r8$classId;
        public float height;
        public float minX;
        public float minY;
        public float width;

        public Box(Box box) {
            this.$r8$classId = 0;
            this.minX = box.minX;
            this.minY = box.minY;
            this.width = box.width;
            this.height = box.height;
        }

        public void intersect(float f, float f2, float f3, float f4) {
            this.minX = Math.max(f, this.minX);
            this.minY = Math.max(f2, this.minY);
            this.width = Math.min(f3, this.width);
            this.height = Math.min(f4, this.height);
        }

        public boolean isEmpty() {
            return (this.minX >= this.width) | (this.minY >= this.height);
        }

        public float maxX() {
            return this.minX + this.width;
        }

        public float maxY() {
            return this.minY + this.height;
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "[" + this.minX + " " + this.minY + " " + this.width + " " + this.height + "]";
                default:
                    return "MutableRect(" + UnsignedKt.toStringAsFixed(this.minX) + ", " + UnsignedKt.toStringAsFixed(this.minY) + ", " + UnsignedKt.toStringAsFixed(this.width) + ", " + UnsignedKt.toStringAsFixed(this.height) + ')';
            }
        }

        /* renamed from: translate-k-4lQ0M, reason: not valid java name */
        public void m798translatek4lQ0M(long j) {
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            this.minX += intBitsToFloat;
            this.minY += intBitsToFloat2;
            this.width += intBitsToFloat;
            this.height += intBitsToFloat2;
        }

        public Box(float f, float f2, float f3, float f4) {
            this.$r8$classId = 0;
            this.minX = f;
            this.minY = f2;
            this.width = f3;
            this.height = f4;
        }

        public Box() {
            this.$r8$classId = 1;
            this.minX = RecyclerView.DECELERATION_RATE;
            this.minY = RecyclerView.DECELERATION_RATE;
            this.width = RecyclerView.DECELERATION_RATE;
            this.height = RecyclerView.DECELERATION_RATE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SolidColor extends SvgElementBase implements SvgContainer {
        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "solidColor";
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void addChild(SvgObject svgObject) {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Stop extends SvgElementBase implements SvgContainer {
        public Float offset;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return Collections.EMPTY_LIST;
        }

        @Override // com.caverock.androidsvg.SVG.SvgObject
        public final String getNodeName() {
            return "stop";
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final void addChild(SvgObject svgObject) {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class SvgConditionalContainer extends SvgElement implements SvgContainer, SvgConditional {
        public ArrayList children = new ArrayList();
        public HashSet requiredFeatures = null;
        public String requiredExtensions = null;
        public HashSet requiredFormats = null;
        public HashSet requiredFonts = null;

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public void addChild(SvgObject svgObject) {
            this.children.add(svgObject);
        }

        @Override // com.caverock.androidsvg.SVG.SvgContainer
        public final List getChildren() {
            return this.children;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final String getRequiredExtensions() {
            return this.requiredExtensions;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFeatures() {
            return this.requiredFeatures;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFonts() {
            return this.requiredFonts;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getRequiredFormats() {
            return this.requiredFormats;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final Set getSystemLanguage() {
            return null;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredExtensions(String str) {
            this.requiredExtensions = str;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFeatures(HashSet hashSet) {
            this.requiredFeatures = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFonts(HashSet hashSet) {
            this.requiredFonts = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setRequiredFormats(HashSet hashSet) {
            this.requiredFormats = hashSet;
        }

        @Override // com.caverock.androidsvg.SVG.SvgConditional
        public final void setSystemLanguage(HashSet hashSet) {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class PathDefinition implements PathInterface {
        public final /* synthetic */ int $r8$classId;
        public Object commands;
        public int commandsLength;
        public Object coords;
        public int coordsLength;

        public PathDefinition(CharSequence charSequence, int i, Locale locale) {
            this.$r8$classId = 1;
            this.commands = charSequence;
            if (charSequence.length() < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("input start index is outside the CharSequence");
            }
            if (i < 0 || i > charSequence.length()) {
                InlineClassHelperKt.throwIllegalArgumentException("input end index is outside the CharSequence");
            }
            BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
            this.coords = wordInstance;
            this.commandsLength = Math.max(0, -50);
            this.coordsLength = Math.min(charSequence.length(), i + 50);
            wordInstance.setText(new CharSequenceCharacterIterator(charSequence, i));
        }

        public static int computeEnumSize(int i, int i2) {
            return computeInt32SizeNoTag(i2) + computeTagSize(i);
        }

        public static int computeInt32Size(int i, int i2) {
            return computeInt32SizeNoTag(i2) + computeTagSize(i);
        }

        public static int computeInt32SizeNoTag(int i) {
            if (i >= 0) {
                return computeRawVarint32Size(i);
            }
            return 10;
        }

        public static int computeMessageSize(int i, AbstractMessageLite abstractMessageLite) {
            return computeMessageSizeNoTag(abstractMessageLite) + computeTagSize(i);
        }

        public static int computeMessageSizeNoTag(AbstractMessageLite abstractMessageLite) {
            int serializedSize = abstractMessageLite.getSerializedSize();
            return computeRawVarint32Size(serializedSize) + serializedSize;
        }

        public static int computeRawVarint32Size(int i) {
            if ((i & (-128)) == 0) {
                return 1;
            }
            if ((i & (-16384)) == 0) {
                return 2;
            }
            if (((-2097152) & i) == 0) {
                return 3;
            }
            return (i & (-268435456)) == 0 ? 4 : 5;
        }

        public static int computeRawVarint64Size(long j) {
            if (((-128) & j) == 0) {
                return 1;
            }
            if (((-16384) & j) == 0) {
                return 2;
            }
            if (((-2097152) & j) == 0) {
                return 3;
            }
            if (((-268435456) & j) == 0) {
                return 4;
            }
            if (((-34359738368L) & j) == 0) {
                return 5;
            }
            if (((-4398046511104L) & j) == 0) {
                return 6;
            }
            if (((-562949953421312L) & j) == 0) {
                return 7;
            }
            if (((-72057594037927936L) & j) == 0) {
                return 8;
            }
            return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
        }

        public static int computeTagSize(int i) {
            return computeRawVarint32Size(i << 3);
        }

        public static boolean isWhitespace(int i) {
            return i == 32 || i == 10 || i == 13 || i == 9;
        }

        public static PathDefinition newInstance(OutputStream outputStream, int i) {
            return new PathDefinition(outputStream, new byte[i]);
        }

        public void addCommand(byte b) {
            int i = this.commandsLength;
            byte[] bArr = (byte[]) this.commands;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.commands = bArr2;
                bArr = bArr2;
            }
            int i2 = this.commandsLength;
            this.commandsLength = i2 + 1;
            bArr[i2] = b;
        }

        public int advanceChar() {
            int i = this.commandsLength;
            int i2 = this.coordsLength;
            if (i == i2) {
                return -1;
            }
            int i3 = i + 1;
            this.commandsLength = i3;
            if (i3 < i2) {
                return ((String) this.commands).charAt(i3);
            }
            return -1;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void arcTo(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            addCommand((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0)));
            coordsEnsure(5);
            float[] fArr = (float[]) this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.coordsLength = i5;
            fArr[i4] = f4;
            this.coordsLength = i + 5;
            fArr[i5] = f5;
        }

        public void checkOffsetIsValid(int i) {
            int i2 = this.commandsLength;
            int i3 = this.coordsLength;
            boolean z = false;
            if (i <= i3 && i2 <= i) {
                z = true;
            }
            if (z) {
                return;
            }
            StringBuilder m = Animation.CC.m(i, i2, "Invalid offset: ", ". Valid range is [", " , ");
            m.append(i3);
            m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m.toString());
        }

        public Boolean checkedNextFlag(Object obj) {
            if (obj == null) {
                return null;
            }
            skipCommaWhitespace();
            int i = this.commandsLength;
            if (i == this.coordsLength) {
                return null;
            }
            char charAt = ((String) this.commands).charAt(i);
            if (charAt != '0' && charAt != '1') {
                return null;
            }
            this.commandsLength++;
            return Boolean.valueOf(charAt == '1');
        }

        public float checkedNextFloat(float f) {
            if (Float.isNaN(f)) {
                return Float.NaN;
            }
            skipCommaWhitespace();
            return nextFloat();
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void close() {
            addCommand((byte) 8);
        }

        public boolean consume(String str) {
            int length = str.length();
            int i = this.commandsLength;
            boolean z = i <= this.coordsLength - length && ((String) this.commands).substring(i, i + length).equals(str);
            if (z) {
                this.commandsLength += length;
            }
            return z;
        }

        public void coordsEnsure(int i) {
            float[] fArr = (float[]) this.coords;
            if (fArr.length < this.coordsLength + i) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.coords = fArr2;
            }
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
            addCommand((byte) 2);
            coordsEnsure(6);
            float[] fArr = (float[]) this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.coordsLength = i5;
            fArr[i4] = f4;
            int i6 = i + 5;
            this.coordsLength = i6;
            fArr[i5] = f5;
            this.coordsLength = i + 6;
            fArr[i6] = f6;
        }

        public boolean empty() {
            return this.commandsLength == this.coordsLength;
        }

        public void enumeratePath(PathInterface pathInterface) {
            int i = 0;
            for (int i2 = 0; i2 < this.commandsLength; i2++) {
                byte b = ((byte[]) this.commands)[i2];
                if (b == 0) {
                    float[] fArr = (float[]) this.coords;
                    int i3 = i + 1;
                    float f = fArr[i];
                    i += 2;
                    pathInterface.moveTo(f, fArr[i3]);
                } else if (b == 1) {
                    float[] fArr2 = (float[]) this.coords;
                    int i4 = i + 1;
                    float f2 = fArr2[i];
                    i += 2;
                    pathInterface.lineTo(f2, fArr2[i4]);
                } else if (b == 2) {
                    float[] fArr3 = (float[]) this.coords;
                    pathInterface.cubicTo(fArr3[i], fArr3[i + 1], fArr3[i + 2], fArr3[i + 3], fArr3[i + 4], fArr3[i + 5]);
                    i += 6;
                } else if (b == 3) {
                    float[] fArr4 = (float[]) this.coords;
                    float f3 = fArr4[i];
                    float f4 = fArr4[i + 1];
                    int i5 = i + 3;
                    float f5 = fArr4[i + 2];
                    i += 4;
                    pathInterface.quadTo(f3, f4, f5, fArr4[i5]);
                } else if (b != 8) {
                    boolean z = (b & 2) != 0;
                    boolean z2 = (b & 1) != 0;
                    float[] fArr5 = (float[]) this.coords;
                    pathInterface.arcTo(fArr5[i], fArr5[i + 1], fArr5[i + 2], z, z2, fArr5[i + 3], fArr5[i + 4]);
                    i += 5;
                } else {
                    pathInterface.close();
                }
            }
        }

        public void flush() {
            refreshBuffer();
        }

        public int getLength() {
            GapBuffer gapBuffer = (GapBuffer) this.coords;
            String str = (String) this.commands;
            if (gapBuffer == null) {
                return str.length();
            }
            return (gapBuffer.capacity - gapBuffer.gapLength()) + (str.length() - (this.coordsLength - this.commandsLength));
        }

        public boolean isAfterLetterOrDigitOrEmoji(int i) {
            CharSequence charSequence = (CharSequence) this.commands;
            int i2 = this.commandsLength + 1;
            if (i > this.coordsLength || i2 > i) {
                return false;
            }
            if (!Character.isLetterOrDigit(Character.codePointBefore(charSequence, i))) {
                int i3 = i - 1;
                if (!Character.isSurrogate(charSequence.charAt(i3))) {
                    if (!EmojiCompat.isConfigured()) {
                        return false;
                    }
                    EmojiCompat emojiCompat = EmojiCompat.get();
                    if (emojiCompat.getLoadState() != 1 || emojiCompat.getEmojiStart(charSequence, i3) == -1) {
                        return false;
                    }
                }
            }
            return true;
        }

        public boolean isAfterPunctuation(int i) {
            int i2 = this.commandsLength + 1;
            if (i > this.coordsLength || i2 > i) {
                return false;
            }
            return UStringsKt.isPunctuation$ui_text(Character.codePointBefore((CharSequence) this.commands, i));
        }

        public boolean isBoundary(int i) {
            checkOffsetIsValid(i);
            if (!((BreakIterator) this.coords).isBoundary(i)) {
                return false;
            }
            if (isOnLetterOrDigitOrEmoji(i) && isOnLetterOrDigitOrEmoji(i - 1) && isOnLetterOrDigitOrEmoji(i + 1)) {
                return false;
            }
            return i <= 0 || i >= ((CharSequence) this.commands).length() - 1 || !(isHiraganaKatakanaBoundary(i) || isHiraganaKatakanaBoundary(i + 1));
        }

        public boolean isHiraganaKatakanaBoundary(int i) {
            CharSequence charSequence = (CharSequence) this.commands;
            int i2 = i - 1;
            Character.UnicodeBlock of = Character.UnicodeBlock.of(charSequence.charAt(i2));
            Character.UnicodeBlock unicodeBlock = Character.UnicodeBlock.HIRAGANA;
            if (Intrinsics.areEqual(of, unicodeBlock) && Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i)), Character.UnicodeBlock.KATAKANA)) {
                return true;
            }
            return Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i)), unicodeBlock) && Intrinsics.areEqual(Character.UnicodeBlock.of(charSequence.charAt(i2)), Character.UnicodeBlock.KATAKANA);
        }

        public boolean isOnLetterOrDigitOrEmoji(int i) {
            CharSequence charSequence = (CharSequence) this.commands;
            int i2 = this.commandsLength;
            if (i >= this.coordsLength || i2 > i) {
                return false;
            }
            if (!Character.isLetterOrDigit(Character.codePointAt(charSequence, i)) && !Character.isSurrogate(charSequence.charAt(i))) {
                if (!EmojiCompat.isConfigured()) {
                    return false;
                }
                EmojiCompat emojiCompat = EmojiCompat.get();
                if (emojiCompat.getLoadState() != 1 || emojiCompat.getEmojiStart(charSequence, i) == -1) {
                    return false;
                }
            }
            return true;
        }

        public boolean isOnPunctuation(int i) {
            int i2 = this.commandsLength;
            if (i >= this.coordsLength || i2 > i) {
                return false;
            }
            return UStringsKt.isPunctuation$ui_text(Character.codePointAt((CharSequence) this.commands, i));
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void lineTo(float f, float f2) {
            addCommand((byte) 1);
            coordsEnsure(2);
            float[] fArr = (float[]) this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            this.coordsLength = i + 2;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void moveTo(float f, float f2) {
            addCommand((byte) 0);
            coordsEnsure(2);
            float[] fArr = (float[]) this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            this.coordsLength = i + 2;
            fArr[i2] = f2;
        }

        public int nextBoundary(int i) {
            checkOffsetIsValid(i);
            int following = ((BreakIterator) this.coords).following(i);
            return (isOnLetterOrDigitOrEmoji(following + (-1)) && isOnLetterOrDigitOrEmoji(following) && !isHiraganaKatakanaBoundary(following)) ? nextBoundary(following) : following;
        }

        public Integer nextChar() {
            int i = this.commandsLength;
            if (i == this.coordsLength) {
                return null;
            }
            String str = (String) this.commands;
            this.commandsLength = i + 1;
            return Integer.valueOf(str.charAt(i));
        }

        public float nextFloat() {
            NumberParser numberParser = (NumberParser) this.coords;
            float parseNumber = numberParser.parseNumber(this.commandsLength, this.coordsLength, (String) this.commands);
            if (!Float.isNaN(parseNumber)) {
                this.commandsLength = numberParser.pos;
            }
            return parseNumber;
        }

        public Length nextLength() {
            float nextFloat = nextFloat();
            if (Float.isNaN(nextFloat)) {
                return null;
            }
            Unit nextUnit = nextUnit();
            return nextUnit == null ? new Length(nextFloat, Unit.px) : new Length(nextFloat, nextUnit);
        }

        public String nextQuotedString() {
            String str = (String) this.commands;
            if (empty()) {
                return null;
            }
            int i = this.commandsLength;
            char charAt = str.charAt(i);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            int advanceChar = advanceChar();
            while (advanceChar != -1 && advanceChar != charAt) {
                advanceChar = advanceChar();
            }
            if (advanceChar == -1) {
                this.commandsLength = i;
                return null;
            }
            int i2 = this.commandsLength;
            this.commandsLength = i2 + 1;
            return str.substring(i + 1, i2);
        }

        public String nextToken(char c, boolean z) {
            String str = (String) this.commands;
            if (empty()) {
                return null;
            }
            char charAt = str.charAt(this.commandsLength);
            if ((!z && isWhitespace(charAt)) || charAt == c) {
                return null;
            }
            int i = this.commandsLength;
            int advanceChar = advanceChar();
            while (advanceChar != -1 && advanceChar != c && (z || !isWhitespace(advanceChar))) {
                advanceChar = advanceChar();
            }
            return str.substring(i, this.commandsLength);
        }

        public Unit nextUnit() {
            String str = (String) this.commands;
            if (empty()) {
                return null;
            }
            char charAt = str.charAt(this.commandsLength);
            int i = this.commandsLength;
            if (charAt == '%') {
                this.commandsLength = i + 1;
                return Unit.percent;
            }
            if (i > this.coordsLength - 2) {
                return null;
            }
            try {
                Unit valueOf = Unit.valueOf(str.substring(i, i + 2).toLowerCase(Locale.US));
                this.commandsLength += 2;
                return valueOf;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public float possibleNextFloat() {
            skipCommaWhitespace();
            NumberParser numberParser = (NumberParser) this.coords;
            float parseNumber = numberParser.parseNumber(this.commandsLength, this.coordsLength, (String) this.commands);
            if (!Float.isNaN(parseNumber)) {
                this.commandsLength = numberParser.pos;
            }
            return parseNumber;
        }

        public int prevBoundary(int i) {
            checkOffsetIsValid(i);
            int preceding = ((BreakIterator) this.coords).preceding(i);
            return (isOnLetterOrDigitOrEmoji(preceding) && isAfterLetterOrDigitOrEmoji(preceding) && !isHiraganaKatakanaBoundary(preceding)) ? prevBoundary(preceding) : preceding;
        }

        @Override // com.caverock.androidsvg.SVG.PathInterface
        public void quadTo(float f, float f2, float f3, float f4) {
            addCommand((byte) 3);
            coordsEnsure(4);
            float[] fArr = (float[]) this.coords;
            int i = this.coordsLength;
            int i2 = i + 1;
            this.coordsLength = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.coordsLength = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.coordsLength = i4;
            fArr[i3] = f3;
            this.coordsLength = i + 4;
            fArr[i4] = f4;
        }

        public void refreshBuffer() {
            ((OutputStream) this.coords).write((byte[]) this.commands, 0, this.coordsLength);
            this.coordsLength = 0;
        }

        public void replace(int i, int i2, String str) {
            if (i > i2) {
                InlineClassHelperKt.throwIllegalArgumentException("start index must be less than or equal to end index: " + i + " > " + i2);
            }
            if (i < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("start must be non-negative, but was " + i);
            }
            GapBuffer gapBuffer = (GapBuffer) this.coords;
            int i3 = 0;
            if (gapBuffer == null) {
                int max = Math.max(255, str.length() + 128);
                char[] cArr = new char[max];
                int min = Math.min(i, 64);
                int min2 = Math.min(((String) this.commands).length() - i2, 64);
                String str2 = (String) this.commands;
                int i4 = i - min;
                str2.getClass();
                str2.getChars(i4, i, cArr, 0);
                String str3 = (String) this.commands;
                int i5 = max - min2;
                int i6 = min2 + i2;
                str3.getClass();
                str3.getChars(i2, i6, cArr, i5);
                str.getChars(0, str.length(), cArr, min);
                int length = str.length() + min;
                GapBuffer gapBuffer2 = new GapBuffer(i3);
                gapBuffer2.capacity = max;
                gapBuffer2.buffer = cArr;
                gapBuffer2.gapStart = length;
                gapBuffer2.gapEnd = i5;
                this.coords = gapBuffer2;
                this.commandsLength = i4;
                this.coordsLength = i6;
                return;
            }
            int i7 = this.commandsLength;
            int i8 = i - i7;
            int i9 = i2 - i7;
            if (i8 < 0 || i9 > gapBuffer.capacity - gapBuffer.gapLength()) {
                this.commands = toString();
                this.coords = null;
                this.commandsLength = -1;
                this.coordsLength = -1;
                replace(i, i2, str);
                return;
            }
            int length2 = str.length() - (i9 - i8);
            if (length2 > gapBuffer.gapLength()) {
                int gapLength = length2 - gapBuffer.gapLength();
                int i10 = gapBuffer.capacity;
                do {
                    i10 *= 2;
                } while (i10 - gapBuffer.capacity < gapLength);
                char[] cArr2 = new char[i10];
                System.arraycopy((char[]) gapBuffer.buffer, 0, cArr2, 0, gapBuffer.gapStart);
                int i11 = gapBuffer.capacity;
                int i12 = gapBuffer.gapEnd;
                int i13 = i11 - i12;
                int i14 = i10 - i13;
                System.arraycopy((char[]) gapBuffer.buffer, i12, cArr2, i14, (i13 + i12) - i12);
                gapBuffer.buffer = cArr2;
                gapBuffer.capacity = i10;
                gapBuffer.gapEnd = i14;
            }
            int i15 = gapBuffer.gapStart;
            if (i8 < i15 && i9 <= i15) {
                int i16 = i15 - i9;
                char[] cArr3 = (char[]) gapBuffer.buffer;
                System.arraycopy(cArr3, i9, cArr3, gapBuffer.gapEnd - i16, i16);
                gapBuffer.gapStart = i8;
                gapBuffer.gapEnd -= i16;
            } else if (i8 >= i15 || i9 < i15) {
                int gapLength2 = gapBuffer.gapLength() + i8;
                int gapLength3 = gapBuffer.gapLength() + i9;
                int i17 = gapBuffer.gapEnd;
                int i18 = gapLength2 - i17;
                char[] cArr4 = (char[]) gapBuffer.buffer;
                System.arraycopy(cArr4, i17, cArr4, gapBuffer.gapStart, i18);
                i8 = gapBuffer.gapStart + i18;
                gapBuffer.gapStart = i8;
                gapBuffer.gapEnd = gapLength3;
            } else {
                gapBuffer.gapEnd = gapBuffer.gapLength() + i9;
                gapBuffer.gapStart = i8;
            }
            str.getChars(0, str.length(), (char[]) gapBuffer.buffer, i8);
            gapBuffer.gapStart = str.length() + gapBuffer.gapStart;
        }

        public boolean skipCommaWhitespace() {
            skipWhitespace();
            int i = this.commandsLength;
            if (i == this.coordsLength || ((String) this.commands).charAt(i) != ',') {
                return false;
            }
            this.commandsLength++;
            skipWhitespace();
            return true;
        }

        public void skipWhitespace() {
            while (true) {
                int i = this.commandsLength;
                if (i >= this.coordsLength || !isWhitespace(((String) this.commands).charAt(i))) {
                    return;
                } else {
                    this.commandsLength++;
                }
            }
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 2:
                    GapBuffer gapBuffer = (GapBuffer) this.coords;
                    String str = (String) this.commands;
                    if (gapBuffer == null) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append((CharSequence) str, 0, this.commandsLength);
                    sb.append((char[]) gapBuffer.buffer, 0, gapBuffer.gapStart);
                    char[] cArr = (char[]) gapBuffer.buffer;
                    int i = gapBuffer.gapEnd;
                    sb.append(cArr, i, gapBuffer.capacity - i);
                    String str2 = (String) this.commands;
                    sb.append((CharSequence) str2, this.coordsLength, str2.length());
                    return sb.toString();
                default:
                    return super.toString();
            }
        }

        public void writeEnum(int i, int i2) {
            writeTag(i, 0);
            writeInt32NoTag(i2);
        }

        public void writeInt32(int i, int i2) {
            writeTag(i, 0);
            writeInt32NoTag(i2);
        }

        public void writeInt32NoTag(int i) {
            if (i >= 0) {
                writeRawVarint32(i);
            } else {
                writeRawVarint64(i);
            }
        }

        public void writeMessage(int i, AbstractMessageLite abstractMessageLite) {
            writeTag(i, 2);
            writeMessageNoTag(abstractMessageLite);
        }

        public void writeMessageNoTag(AbstractMessageLite abstractMessageLite) {
            writeRawVarint32(abstractMessageLite.getSerializedSize());
            abstractMessageLite.writeTo(this);
        }

        public void writeRawByte(int i) {
            byte b = (byte) i;
            if (this.coordsLength == this.commandsLength) {
                refreshBuffer();
            }
            byte[] bArr = (byte[]) this.commands;
            int i2 = this.coordsLength;
            this.coordsLength = i2 + 1;
            bArr[i2] = b;
        }

        public void writeRawBytes(ByteString byteString) {
            int size = byteString.size();
            int i = this.commandsLength;
            int i2 = this.coordsLength;
            int i3 = i - i2;
            byte[] bArr = (byte[]) this.commands;
            if (i3 >= size) {
                byteString.copyTo(0, i2, size, bArr);
                this.coordsLength += size;
                return;
            }
            byteString.copyTo(0, i2, i3, bArr);
            int i4 = size - i3;
            this.coordsLength = i;
            refreshBuffer();
            if (i4 <= i) {
                byteString.copyTo(i3, 0, i4, bArr);
                this.coordsLength = i4;
                return;
            }
            OutputStream outputStream = (OutputStream) this.coords;
            if (i3 < 0) {
                Gson$$ExternalSyntheticBUOutline0.m(30, i3, "Source offset < 0: ");
                return;
            }
            if (i4 < 0) {
                Gson$$ExternalSyntheticBUOutline0.m(23, i4, "Length < 0: ");
                return;
            }
            int i5 = i3 + i4;
            if (i5 > byteString.size()) {
                Gson$$ExternalSyntheticBUOutline0.m(39, i5, "Source end offset exceeded: ");
            } else if (i4 > 0) {
                byteString.writeToInternal(outputStream, i3, i4);
            }
        }

        public void writeRawLittleEndian32(int i) {
            writeRawByte(i & 255);
            writeRawByte((i >> 8) & 255);
            writeRawByte((i >> 16) & 255);
            writeRawByte((i >> 24) & 255);
        }

        public void writeRawLittleEndian64(long j) {
            writeRawByte(((int) j) & 255);
            writeRawByte(((int) (j >> 8)) & 255);
            writeRawByte(((int) (j >> 16)) & 255);
            writeRawByte(((int) (j >> 24)) & 255);
            writeRawByte(((int) (j >> 32)) & 255);
            writeRawByte(((int) (j >> 40)) & 255);
            writeRawByte(((int) (j >> 48)) & 255);
            writeRawByte(((int) (j >> 56)) & 255);
        }

        public void writeRawVarint32(int i) {
            while ((i & (-128)) != 0) {
                writeRawByte((i & 127) | 128);
                i >>>= 7;
            }
            writeRawByte(i);
        }

        public void writeRawVarint64(long j) {
            while (((-128) & j) != 0) {
                writeRawByte((((int) j) & 127) | 128);
                j >>>= 7;
            }
            writeRawByte((int) j);
        }

        public void writeTag(int i, int i2) {
            writeRawVarint32((i << 3) | i2);
        }

        public boolean consume(char c) {
            int i = this.commandsLength;
            boolean z = i < this.coordsLength && ((String) this.commands).charAt(i) == c;
            if (z) {
                this.commandsLength++;
            }
            return z;
        }

        public String nextToken() {
            return nextToken(' ', false);
        }

        public /* synthetic */ PathDefinition(int i) {
            this.$r8$classId = i;
        }

        public PathDefinition(OutputStream outputStream, byte[] bArr) {
            this.$r8$classId = 5;
            this.coords = outputStream;
            this.commands = bArr;
            this.coordsLength = 0;
            this.commandsLength = bArr.length;
        }

        public PathDefinition(EndCompoundLayout endCompoundLayout, SVG svg) {
            this.$r8$classId = 4;
            this.commands = new SparseArray();
            this.coords = endCompoundLayout;
            TypedArray typedArray = (TypedArray) svg.cssRules;
            this.commandsLength = typedArray.getResourceId(28, 0);
            this.coordsLength = typedArray.getResourceId(53, 0);
        }

        public PathDefinition(String str) {
            this.$r8$classId = 3;
            this.commandsLength = 0;
            this.coordsLength = 0;
            this.coords = new NumberParser();
            String trim = str.trim();
            this.commands = trim;
            this.coordsLength = trim.length();
        }

        public void writeRawBytes(byte[] bArr) {
            int length = bArr.length;
            int i = this.commandsLength;
            int i2 = this.coordsLength;
            int i3 = i - i2;
            byte[] bArr2 = (byte[]) this.commands;
            if (i3 >= length) {
                System.arraycopy(bArr, 0, bArr2, i2, length);
                this.coordsLength += length;
                return;
            }
            System.arraycopy(bArr, 0, bArr2, i2, i3);
            int i4 = length - i3;
            this.coordsLength = i;
            refreshBuffer();
            if (i4 <= i) {
                System.arraycopy(bArr, i3, bArr2, 0, i4);
                this.coordsLength = i4;
            } else {
                ((OutputStream) this.coords).write(bArr, i3, i4);
            }
        }
    }

    public Object get() {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            return this.idToElementMap;
        }
        ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.rootElement).get();
        int find = threadMap.find(currentThreadId);
        if (find >= 0) {
            return threadMap.values[find];
        }
        return null;
    }

    public void set(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        int i = MutableLoadStateCollection$WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            this.rootElement = loadState;
            return;
        }
        if (i == 2) {
            this.idToElementMap = loadState;
        } else if (i == 3) {
            this.cssRules = loadState;
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        }
    }

    public void set(Object obj) {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            this.idToElementMap = obj;
            return;
        }
        synchronized (this.cssRules) {
            ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.rootElement).get();
            int find = threadMap.find(currentThreadId);
            if (find < 0) {
                ((AtomicReference) this.rootElement).set(threadMap.newWith(currentThreadId, obj));
            } else {
                threadMap.values[find] = obj;
            }
        }
    }

    public void set(LoadStates loadStates) {
        this.rootElement = loadStates.refresh;
        this.idToElementMap = loadStates.append;
        this.cssRules = loadStates.prepend;
    }

    public /* synthetic */ SVG(int i, boolean z) {
        this.$r8$classId = i;
    }

    public /* synthetic */ SVG(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.rootElement = obj;
        this.cssRules = obj2;
        this.idToElementMap = obj3;
    }

    public SVG(List list) {
        this.$r8$classId = 25;
        this.idToElementMap = list;
        this.rootElement = new ArrayList(list.size());
        this.cssRules = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            ((ArrayList) this.rootElement).add(new ShapeKeyframeAnimation((List) ((com.airbnb.lottie.model.content.Mask) list.get(i)).maskPath.fragment));
            ((ArrayList) this.cssRules).add(((com.airbnb.lottie.model.content.Mask) list.get(i)).opacity.createAnimation());
        }
    }

    public SVG(Recomposer$$ExternalSyntheticLambda1 recomposer$$ExternalSyntheticLambda1) {
        this.$r8$classId = 5;
        this.rootElement = new AtomicInt(0);
        this.cssRules = new Request.Builder(2);
        this.idToElementMap = new Recomposer$$ExternalSyntheticLambda6(22, this, recomposer$$ExternalSyntheticLambda1);
    }

    public SVG(SystemForegroundService systemForegroundService) {
        this.$r8$classId = 20;
        this.rootElement = new LifecycleRegistry(systemForegroundService, true);
        this.cssRules = new Handler(Looper.getMainLooper());
    }

    public SVG(MaterialBackHandler materialBackHandler, android.view.View view) {
        Object materialBackOrchestrator$Api33BackCallbackDelegate;
        this.$r8$classId = 29;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            materialBackOrchestrator$Api33BackCallbackDelegate = new MaterialBackOrchestrator$Api34BackCallbackDelegate();
        } else {
            materialBackOrchestrator$Api33BackCallbackDelegate = i >= 33 ? new MaterialBackOrchestrator$Api33BackCallbackDelegate() : null;
        }
        this.rootElement = materialBackOrchestrator$Api33BackCallbackDelegate;
        this.cssRules = materialBackHandler;
        this.idToElementMap = view;
    }

    public SVG(android.view.View view) {
        this.$r8$classId = 11;
        this.rootElement = view;
        this.cssRules = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new LayoutNode$_foldedChildren$1(13, this));
        this.idToElementMap = new HintHandler(view);
    }

    public SVG(PagerState$$ExternalSyntheticLambda2 pagerState$$ExternalSyntheticLambda2) {
        this.$r8$classId = 4;
        this.rootElement = pagerState$$ExternalSyntheticLambda2;
    }

    public SVG(CanvasDrawScope canvasDrawScope) {
        this.$r8$classId = 9;
        this.idToElementMap = canvasDrawScope;
        this.rootElement = new PopupMenu$1(29, this);
    }

    public SVG(Runnable runnable) {
        this.$r8$classId = 16;
        this.cssRules = new CopyOnWriteArrayList();
        this.idToElementMap = new HashMap();
        this.rootElement = runnable;
    }

    public SVG(Context context, LocationManager locationManager) {
        this.$r8$classId = 1;
        this.idToElementMap = new TwilightManager$TwilightState();
        this.rootElement = context;
        this.cssRules = locationManager;
    }

    public SVG(HintHandler hintHandler) {
        this.$r8$classId = 24;
        this.rootElement = hintHandler;
        this.cssRules = new MutexImpl();
    }

    public SVG(ConstraintWidgetContainer constraintWidgetContainer) {
        this.$r8$classId = 15;
        this.rootElement = new ArrayList();
        this.cssRules = new BasicMeasure$Measure();
        this.idToElementMap = constraintWidgetContainer;
    }

    public SVG(ImageLoader$Builder imageLoader$Builder, AutoMigration_14_15 autoMigration_14_15, DefaultGlyphChecker defaultGlyphChecker, Set set) {
        this.$r8$classId = 18;
        this.rootElement = autoMigration_14_15;
        this.cssRules = imageLoader$Builder;
        this.idToElementMap = defaultGlyphChecker;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new kotlinx.coroutines.internal.Symbol(1, str));
        }
    }

    public SVG(TypefaceResult$Immutable typefaceResult$Immutable, SVG svg) {
        this.$r8$classId = 12;
        this.rootElement = typefaceResult$Immutable;
        this.cssRules = svg;
        this.idToElementMap = typefaceResult$Immutable.value;
    }

    public /* synthetic */ SVG(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.rootElement = obj;
        this.cssRules = obj2;
    }

    public SVG(Object obj) {
        this.$r8$classId = 6;
        this.rootElement = new MutableIntList();
        this.cssRules = new MutableObjectList();
        this.idToElementMap = obj;
    }

    public SVG(ExtendedFloatingActionButton extendedFloatingActionButton, FormBody.Builder builder, ExtendedFloatingActionButton.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 28;
        this.idToElementMap = extendedFloatingActionButton;
        this.rootElement = builder;
        this.cssRules = anonymousClass1;
    }
}
