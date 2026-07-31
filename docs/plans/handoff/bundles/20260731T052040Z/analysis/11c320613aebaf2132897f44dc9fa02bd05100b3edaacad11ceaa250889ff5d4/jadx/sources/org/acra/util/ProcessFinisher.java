package org.acra.util;

import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Choreographer;
import android.view.KeyEvent;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextHelper;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.SimpleArrayMap;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.ComposePausableCompositionException;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda1;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.ThreadMap;
import androidx.compose.runtime.internal.Thread_androidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.EmojiProcessor$ProcessorSm;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ServiceLifecycleDispatcher$DispatchRunnable;
import androidx.transition.Transition;
import androidx.transition.Transition$SeekController$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.foreground.SystemForegroundService;
import coil3.ComponentRegistry;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.StaticImageDecoderKt;
import coil3.memory.MemoryCacheService;
import com.google.android.material.motion.MaterialBackOrchestrator$Api33BackCallbackDelegate;
import com.google.android.material.motion.MaterialBackOrchestrator$Api34BackCallbackDelegate;
import com.google.android.material.navigation.NavigationView;
import com.google.common.base.Joiner;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.core.CorePlugin;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelMap;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.internal.DefaultSocket$SocketSink;
import okio.internal.DefaultSocket$SocketSource;
import org.acra.ACRA;
import org.acra.ACRAConstants;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.interaction.ReportInteraction;
import org.acra.plugins.ServicePluginLoader;
import org.acra.sender.NullSender;
import org.acra.sender.ReportSender;
import org.acra.sender.ReportSenderFactory;
import org.acra.util.ProcessFinisher;
import org.reactivestreams.Subscriber;
import org.schabi.newpipe.App;
import org.schabi.newpipe.databinding.ActivityErrorBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ProcessFinisher implements Applier, InputContentInfoCompat$InputContentInfoCompatImpl, Socket {
    public static ProcessFinisher sInstance;
    public final /* synthetic */ int $r8$classId;
    public Object config;
    public Object context;
    public Object lastActivityManager;

    public ProcessFinisher(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 8:
                this.context = new AtomicReference(Expect_jvmKt.emptyThreadMap);
                this.config = new Object();
                break;
            case 11:
                this.context = new PopupMenu$1(27);
                this.config = new PopupMenu$1(27);
                this.lastActivityManager = new PopupMenu$1(27);
                break;
            case 14:
                this.context = new WeakHashMap();
                this.config = new WeakHashMap();
                this.lastActivityManager = new WeakHashMap();
                break;
            case 15:
                break;
            case 21:
                this.context = new MutableScatterMap();
                break;
            default:
                long[] jArr = ScatterMapKt.EmptyGroup;
                this.context = new MutableScatterMap();
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

    public static ProcessFinisher obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new ProcessFinisher(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public void add(LayoutNode layoutNode, Invalidation invalidation) {
        PopupMenu$1 popupMenu$1 = (PopupMenu$1) this.context;
        PopupMenu$1 popupMenu$12 = (PopupMenu$1) this.config;
        PopupMenu$1 popupMenu$13 = (PopupMenu$1) this.lastActivityManager;
        int ordinal = invalidation.ordinal();
        if (ordinal == 0) {
            popupMenu$1.add(layoutNode);
            popupMenu$13.add(layoutNode);
            return;
        }
        if (ordinal == 1) {
            popupMenu$12.add(layoutNode);
            popupMenu$13.add(layoutNode);
            return;
        }
        if (ordinal == 2) {
            if (layoutNode.lookaheadRoot != null) {
                popupMenu$13.add(layoutNode);
                return;
            } else {
                popupMenu$1.add(layoutNode);
                return;
            }
        }
        if (ordinal != 3) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
        } else if (layoutNode.lookaheadRoot != null) {
            popupMenu$13.add(layoutNode);
        } else {
            popupMenu$12.add(layoutNode);
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(Object obj, Function2 function2) {
        switch (this.$r8$classId) {
            case 7:
                ((MutableIntList) this.context).add(7);
                MutableObjectList mutableObjectList = (MutableObjectList) this.config;
                mutableObjectList.add(function2);
                mutableObjectList.add(obj);
                break;
            default:
                function2.invoke(getCurrent(), obj);
                break;
        }
    }

    public void clear() {
        ((ArrayList) this.config).clear();
        this.lastActivityManager = this.context;
        ((LayoutNode) this.context).removeAll$ui();
    }

    public void configure(AbstractMarkwonPlugin abstractMarkwonPlugin) {
        HashSet hashSet = (HashSet) this.lastActivityManager;
        ArrayList arrayList = (ArrayList) this.config;
        if (arrayList.contains(abstractMarkwonPlugin)) {
            return;
        }
        if (hashSet.contains(abstractMarkwonPlugin)) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$3(hashSet, "Cyclic dependency chain found: ");
            return;
        }
        hashSet.add(abstractMarkwonPlugin);
        abstractMarkwonPlugin.configure(this);
        hashSet.remove(abstractMarkwonPlugin);
        if (arrayList.contains(abstractMarkwonPlugin)) {
            return;
        }
        if (CorePlugin.class.isAssignableFrom(abstractMarkwonPlugin.getClass())) {
            arrayList.add(0, abstractMarkwonPlugin);
        } else {
            arrayList.add(abstractMarkwonPlugin);
        }
    }

    public boolean contains(LayoutNode layoutNode) {
        return !(layoutNode.lookaheadRoot == null) && (((SortedSet) ((PopupMenu$1) this.context).this$0).contains(layoutNode) || ((SortedSet) ((PopupMenu$1) this.config).this$0).contains(layoutNode));
    }

    @Override // androidx.compose.runtime.Applier
    public void down(Object obj) {
        switch (this.$r8$classId) {
            case 7:
                ((MutableIntList) this.context).add(1);
                ((MutableObjectList) this.config).add(obj);
                break;
            default:
                ((ArrayList) this.config).add(this.lastActivityManager);
                this.lastActivityManager = obj;
                break;
        }
    }

    public Object get() {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            return this.lastActivityManager;
        }
        ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.context).get();
        int find = threadMap.find(currentThreadId);
        if (find >= 0) {
            return threadMap.values[find];
        }
        return null;
    }

    public Canvas getCanvas() {
        return ((CanvasDrawScope) this.lastActivityManager).drawParams.canvas;
    }

    public ColorStateList getColorStateList(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) this.config;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = StaticImageDecoderKt.getColorStateList((Context) this.context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getContentUri() {
        return (Uri) this.context;
    }

    public Object getCurrent() {
        return this.lastActivityManager;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public ClipDescription getDescription() {
        return (ClipDescription) this.config;
    }

    public Drawable getDrawable(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.config;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : Cookie.Companion.getDrawable((Context) this.context, resourceId);
    }

    public Drawable getDrawableIfKnown(int i) {
        int resourceId;
        Drawable drawable;
        if (!((TypedArray) this.config).hasValue(i) || (resourceId = ((TypedArray) this.config).getResourceId(i, 0)) == 0) {
            return null;
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = (Context) this.context;
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
        int resourceId = ((TypedArray) this.config).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.lastActivityManager) == null) {
            this.lastActivityManager = new TypedValue();
        }
        Context context = (Context) this.context;
        TypedValue typedValue = (TypedValue) this.lastActivityManager;
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        if (context.isRestricted()) {
            return null;
        }
        return ResourcesCompat.loadFont(context, resourceId, typedValue, i2, anonymousClass1, true, false);
    }

    public boolean getHasVisibleItems() {
        return !getLayoutInfo().visiblePagesInfo.isEmpty();
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

    public PagerMeasureResult getLayoutInfo() {
        PagerMeasureResult pagerMeasureResult = (PagerMeasureResult) this.config;
        if (pagerMeasureResult != null) {
            return pagerMeasureResult;
        }
        Intrinsics.throwUninitializedPropertyAccessException("layoutInfo");
        throw null;
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public Uri getLinkUri() {
        return (Uri) this.lastActivityManager;
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

    @Override // okio.Socket
    public Sink getSink() {
        return (RealBufferedSink) this.lastActivityManager;
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public long m729getSizeNHjbRc() {
        return ((CanvasDrawScope) this.lastActivityManager).drawParams.size;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (RealBufferedSource) this.config;
    }

    public int getTotalItemsCount() {
        return ((Number) ((PagerState$$ExternalSyntheticLambda1) this.context).invoke()).intValue();
    }

    public boolean hasGlyph(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if ((typefaceEmojiRasterizer.mCache & 3) == 0) {
            DefaultGlyphChecker defaultGlyphChecker = (DefaultGlyphChecker) this.lastActivityManager;
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
        switch (this.$r8$classId) {
            case 7:
                MutableIntList mutableIntList = (MutableIntList) this.context;
                mutableIntList.add(5);
                mutableIntList.add(i);
                ((MutableObjectList) this.config).add(obj);
                break;
            default:
                ((LayoutNode) this.lastActivityManager).insertAt$ui(i, (LayoutNode) obj);
                break;
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, Object obj) {
        switch (this.$r8$classId) {
            case 7:
                MutableIntList mutableIntList = (MutableIntList) this.context;
                mutableIntList.add(6);
                mutableIntList.add(i);
                ((MutableObjectList) this.config).add(obj);
                break;
            default:
                break;
        }
    }

    public boolean isNotEmpty() {
        return !(((SortedSet) ((PopupMenu$1) this.context).this$0).isEmpty() && ((SortedSet) ((PopupMenu$1) this.lastActivityManager).this$0).isEmpty() && ((SortedSet) ((PopupMenu$1) this.config).this$0).isEmpty());
    }

    public boolean isStaleResolvedFont() {
        if (((State) this.context).getValue() != this.lastActivityManager) {
            return true;
        }
        ProcessFinisher processFinisher = (ProcessFinisher) this.config;
        return processFinisher != null && processFinisher.isStaleResolvedFont();
    }

    public boolean measure(int i, ConstraintWidget constraintWidget, ConstraintLayout.Measurer measurer) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.config;
        int[] iArr = constraintWidget.mListDimensionBehaviors;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        basicMeasure$Measure.horizontalBehavior = iArr[0];
        basicMeasure$Measure.verticalBehavior = iArr[1];
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = i;
        boolean z = basicMeasure$Measure.horizontalBehavior == 3;
        boolean z2 = basicMeasure$Measure.verticalBehavior == 3;
        boolean z3 = z && constraintWidget.mDimensionRatio > 0.0f;
        boolean z4 = z2 && constraintWidget.mDimensionRatio > 0.0f;
        if (z3 && iArr2[0] == 4) {
            basicMeasure$Measure.horizontalBehavior = 1;
        }
        if (z4 && iArr2[1] == 4) {
            basicMeasure$Measure.verticalBehavior = 1;
        }
        measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        int i2 = basicMeasure$Measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i2;
        constraintWidget.mHasBaseline = i2 > 0;
        basicMeasure$Measure.measureStrategy = 0;
        return basicMeasure$Measure.measuredNeedsSolverPass;
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        switch (this.$r8$classId) {
            case 7:
                MutableIntList mutableIntList = (MutableIntList) this.context;
                mutableIntList.add(3);
                mutableIntList.add(i);
                mutableIntList.add(i2);
                mutableIntList.add(i3);
                break;
            default:
                ((LayoutNode) this.lastActivityManager).move$ui(i, i2, i3);
                break;
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void onEndChanges() {
        switch (this.$r8$classId) {
            case 7:
                break;
            default:
                Owner owner = ((LayoutNode) this.context).owner;
                if (owner != null) {
                    ((AndroidComposeView) owner).onEndApplyChanges();
                    break;
                }
                break;
        }
    }

    public boolean performInteractions(File file) {
        boolean z;
        file.getClass();
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = (ArrayList) this.lastActivityManager;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            z = true;
            char c = 1;
            if (!it.hasNext()) {
                break;
            }
            arrayList2.add(newCachedThreadPool.submit(new Processor$$ExternalSyntheticLambda0(c == true ? 1 : 0, (ReportInteraction) it.next(), this, file)));
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Future future = (Future) it2.next();
            do {
                try {
                    Object obj = future.get();
                    obj.getClass();
                    z = ((Boolean) obj).booleanValue() & z;
                } catch (InterruptedException unused) {
                } catch (ExecutionException e) {
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    Log.w("ACRA", "Report interaction threw exception, will be ignored.", e);
                }
            } while (!future.isDone());
        }
        return z;
    }

    public void playTo(ProcessFinisher processFinisher, ActivityErrorBinding activityErrorBinding) {
        Exception exc;
        Exception exc2;
        int i;
        MutableIntList mutableIntList = (MutableIntList) this.context;
        int i2 = mutableIntList._size;
        MutableObjectList mutableObjectList = (MutableObjectList) this.config;
        MutableObjectList mutableObjectList2 = new MutableObjectList();
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            try {
                try {
                    switch (mutableIntList.get(i3)) {
                        case 0:
                            processFinisher.up();
                            i3 = i5;
                        case 1:
                            int i6 = i4 + 1;
                            processFinisher.down(mutableObjectList.get(i4));
                            i4 = i6;
                            i3 = i5;
                        case 2:
                            int i7 = i3 + 2;
                            i3 += 3;
                            processFinisher.remove(mutableIntList.get(i5), mutableIntList.get(i7));
                        case 3:
                            int i8 = i3 + 2;
                            try {
                                i = i3 + 3;
                            } catch (Exception e) {
                                exc = e;
                                i3 = i8;
                            }
                            try {
                                i3 += 4;
                                processFinisher.move(mutableIntList.get(i5), mutableIntList.get(i8), mutableIntList.get(i));
                            } catch (Exception e2) {
                                exc = e2;
                                i3 = i;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i3 - 1, exc);
                            }
                        case 4:
                            processFinisher.clear();
                            i3 = i5;
                        case 5:
                            i3 += 2;
                            int i9 = i4 + 1;
                            processFinisher.insertBottomUp(mutableIntList.get(i5), mutableObjectList.get(i4));
                            i4 = i9;
                        case 6:
                            i3 += 2;
                            try {
                                mutableIntList.get(i5);
                                int i10 = i4 + 1;
                                i4 = i10;
                            } catch (Exception e3) {
                                exc2 = e3;
                                exc = exc2;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i3 - 1, exc);
                            }
                        case 7:
                            int i11 = i4 + 1;
                            Object obj = mutableObjectList.get(i4);
                            obj.getClass();
                            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj);
                            i4 += 2;
                            ((Function2) obj).invoke(processFinisher.getCurrent(), mutableObjectList.get(i11));
                            i3 = i5;
                        case 8:
                            Object obj2 = processFinisher.lastActivityManager;
                            if (obj2 instanceof ComposeNodeLifecycleCallback) {
                                ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) obj2;
                                if (((MutableVector) activityErrorBinding.errorSorryView).remove(composeNodeLifecycleCallback)) {
                                    composeNodeLifecycleCallback.onDeactivate();
                                }
                            }
                            mutableObjectList2.add(obj2);
                            processFinisher.reuse();
                            i3 = i5;
                        default:
                            i3 = i5;
                    }
                } catch (Exception e4) {
                    exc2 = e4;
                    i3 = i5;
                    exc = exc2;
                    throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i3 - 1, exc);
                }
            } catch (Throwable th) {
                processFinisher.onEndChanges();
                throw th;
            }
        }
        if (i4 != mutableObjectList._size) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        mutableIntList._size = 0;
        processFinisher.onEndChanges();
    }

    public void postDispatchRunnable(Lifecycle.Event event) {
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable = (ServiceLifecycleDispatcher$DispatchRunnable) this.lastActivityManager;
        if (serviceLifecycleDispatcher$DispatchRunnable != null) {
            serviceLifecycleDispatcher$DispatchRunnable.run();
        }
        ServiceLifecycleDispatcher$DispatchRunnable serviceLifecycleDispatcher$DispatchRunnable2 = new ServiceLifecycleDispatcher$DispatchRunnable((LifecycleRegistry) this.context, event);
        this.lastActivityManager = serviceLifecycleDispatcher$DispatchRunnable2;
        ((Handler) this.config).postAtFrontOfQueue(serviceLifecycleDispatcher$DispatchRunnable2);
    }

    public Object process(CharSequence charSequence, int i, int i2, int i3, boolean z, EmojiProcessor$EmojiProcessCallback emojiProcessor$EmojiProcessCallback) {
        int i4;
        char c;
        EmojiProcessor$ProcessorSm emojiProcessor$ProcessorSm = new EmojiProcessor$ProcessorSm((MetadataRepo$Node) ((Dispatcher) this.config).runningAsyncCalls);
        int codePointAt = Character.codePointAt(charSequence, i);
        int i5 = 0;
        boolean z2 = true;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                SparseArray sparseArray = emojiProcessor$ProcessorSm.mCurrentNode.mChildren;
                MetadataRepo$Node metadataRepo$Node = sparseArray == null ? null : (MetadataRepo$Node) sparseArray.get(codePointAt);
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
        ((TypedArray) this.config).recycle();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        switch (this.$r8$classId) {
            case 7:
                MutableIntList mutableIntList = (MutableIntList) this.context;
                mutableIntList.add(2);
                mutableIntList.add(i);
                mutableIntList.add(i2);
                break;
            default:
                ((LayoutNode) this.lastActivityManager).removeAt$ui(i, i2);
                break;
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        RectManager rectManager;
        AndroidAutofillManager androidAutofillManager;
        RectManager rectManager2;
        switch (this.$r8$classId) {
            case 7:
                ((MutableIntList) this.context).add(8);
                break;
            default:
                LayoutNode layoutNode = (LayoutNode) this.lastActivityManager;
                NodeChain nodeChain = layoutNode.nodes;
                if (!layoutNode.isAttached()) {
                    InlineClassHelperKt.throwIllegalArgumentException("onReuse is only expected on attached node");
                }
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.subcompositionsState;
                if (layoutNodeSubcompositionsState != null) {
                    layoutNodeSubcompositionsState.markActiveNodesAsReused(false);
                }
                layoutNode.isCurrentlyCalculatingSemanticsConfiguration = false;
                if (layoutNode.isDeactivated) {
                    layoutNode.isDeactivated = false;
                } else {
                    Modifier.Node node = layoutNode.nodes.tail;
                    for (Modifier.Node node2 = node; node2 != null; node2 = node2.parent) {
                        if (node2.isAttached) {
                            node2.reset$ui();
                        }
                    }
                    for (Modifier.Node node3 = node; node3 != null; node3 = node3.parent) {
                        if (node3.isAttached) {
                            node3.runDetachLifecycle$ui();
                        }
                    }
                    while (node != null) {
                        if (node.isAttached) {
                            node.markAsDetached$ui();
                        }
                        node = node.parent;
                    }
                }
                int i = layoutNode.semanticsId;
                Owner owner = layoutNode.owner;
                if (owner != null && (rectManager2 = ((AndroidComposeView) owner).getRectManager()) != null) {
                    rectManager2.remove(layoutNode);
                }
                layoutNode.semanticsId = SemanticsModifierKt.lastIdentifier.addAndGet(1);
                Owner owner2 = layoutNode.owner;
                if (owner2 != null) {
                    AndroidComposeView androidComposeView = (AndroidComposeView) owner2;
                    androidComposeView.getLayoutNodes().remove(i);
                    androidComposeView.getLayoutNodes().set(layoutNode.semanticsId, layoutNode);
                }
                for (Modifier.Node node4 = nodeChain.head; node4 != null; node4 = node4.child) {
                    node4.markAsAttached$ui();
                }
                nodeChain.runAttachLifecycle();
                if (nodeChain.m339hasH91voCI$ui(8)) {
                    layoutNode.invalidateSemantics$ui();
                }
                LayoutNode.rescheduleRemeasureOrRelayout$ui(layoutNode);
                Owner owner3 = layoutNode.owner;
                if (owner3 != null) {
                    AndroidComposeView androidComposeView2 = (AndroidComposeView) owner3;
                    if (AndroidComposeView.autofillSupported() && (androidAutofillManager = androidComposeView2._autofillManager) != null) {
                        AndroidComposeView androidComposeView3 = androidAutofillManager.view;
                        AutofillIdCompat autofillIdCompat = androidAutofillManager.platformAutofillManager;
                        MutableIntSet mutableIntSet = androidAutofillManager.currentlyDisplayedIDs;
                        if (mutableIntSet.remove(i)) {
                            autofillIdCompat.notifyViewVisibilityChanged(androidComposeView3, i, false);
                        }
                        SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
                        if (semanticsConfiguration != null && semanticsConfiguration.props.contains(SemanticsProperties.ContentType)) {
                            mutableIntSet.add(layoutNode.semanticsId);
                            autofillIdCompat.notifyViewVisibilityChanged(androidComposeView3, layoutNode.semanticsId, true);
                        }
                    }
                }
                Owner owner4 = layoutNode.owner;
                if (owner4 != null && (rectManager = ((AndroidComposeView) owner4).getRectManager()) != null) {
                    rectManager.recalculateRectIfDirty(layoutNode);
                    break;
                }
                break;
        }
    }

    public void sendReports(boolean z, Bundle bundle) {
        Context context = (Context) this.context;
        CoreConfiguration coreConfiguration = (CoreConfiguration) this.config;
        ErrorReporter errorReporter = ACRA.errorReporter;
        try {
            ArrayList loadEnabled = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, ReportSenderFactory.class);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(loadEnabled, 10));
            Iterator it = loadEnabled.iterator();
            while (it.hasNext()) {
                ReportSender create = ((ReportSenderFactory) it.next()).create(context, coreConfiguration);
                ErrorReporter errorReporter2 = ACRA.errorReporter;
                arrayList.add(create);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                ((ReportSender) next).getClass();
                if (!z) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(arrayList2);
            int i = 0;
            if (arrayList3.isEmpty()) {
                ErrorReporter errorReporter3 = ACRA.errorReporter;
                arrayList3.add(new NullSender(i));
            }
            File[] approvedReports = ((ReportLocator) this.lastActivityManager).getApprovedReports();
            Dispatcher dispatcher = new Dispatcher(context, coreConfiguration, arrayList3, bundle, 16);
            int length = approvedReports.length;
            int i2 = 0;
            boolean z2 = false;
            while (i < length) {
                File file = approvedReports[i];
                String name = file.getName();
                name.getClass();
                boolean contains$default = StringsKt.contains$default(name, ACRAConstants.SILENT_SUFFIX);
                boolean z3 = !contains$default;
                if (!bundle.getBoolean("onlySendSilentReports") || contains$default) {
                    z2 |= z3;
                    if (i2 >= 5) {
                        break;
                    } else if (dispatcher.distribute(file)) {
                        i2++;
                    }
                }
                i++;
            }
            String reportSendSuccessToast = i2 > 0 ? coreConfiguration.getReportSendSuccessToast() : coreConfiguration.getReportSendFailureToast();
            if (z2 && reportSendSuccessToast != null && reportSendSuccessToast.length() != 0) {
                ErrorReporter errorReporter4 = ACRA.errorReporter;
                new Handler(Looper.getMainLooper()).post(new Processor$$ExternalSyntheticLambda2(this, reportSendSuccessToast, 20));
            }
        } catch (Exception e) {
            ErrorReporter errorReporter5 = ACRA.errorReporter;
            Log.e("ACRA", "", e);
        }
        ErrorReporter errorReporter6 = ACRA.errorReporter;
    }

    public void set(Object obj) {
        long currentThreadId = Expect_jvmKt.currentThreadId();
        if (currentThreadId == Thread_androidKt.MainThreadId) {
            this.lastActivityManager = obj;
            return;
        }
        synchronized (this.config) {
            ThreadMap threadMap = (ThreadMap) ((AtomicReference) this.context).get();
            int find = threadMap.find(currentThreadId);
            if (find < 0) {
                ((AtomicReference) this.context).set(threadMap.newWith(currentThreadId, obj));
            } else {
                threadMap.values[find] = obj;
            }
        }
    }

    public void setCanvas(Canvas canvas) {
        ((CanvasDrawScope) this.lastActivityManager).drawParams.canvas = canvas;
    }

    public void setDensity(Density density) {
        ((CanvasDrawScope) this.lastActivityManager).drawParams.density = density;
    }

    public void setLayoutDirection(LayoutDirection layoutDirection) {
        ((CanvasDrawScope) this.lastActivityManager).drawParams.layoutDirection = layoutDirection;
    }

    /* renamed from: setSize-uvyYCjk, reason: not valid java name */
    public void m730setSizeuvyYCjk(long j) {
        ((CanvasDrawScope) this.lastActivityManager).drawParams.size = j;
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
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) this.lastActivityManager;
        constraintWidgetContainer2.mPass = i;
        constraintWidgetContainer2.layout();
    }

    public void unregister() {
        MutableScatterMap mutableScatterMap = (MutableScatterMap) this.context;
        String str = (String) this.config;
        List list = (List) mutableScatterMap.remove(str);
        if (list != null) {
            list.remove((Function0) this.lastActivityManager);
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        mutableScatterMap.set(str, list);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        switch (this.$r8$classId) {
            case 7:
                ((MutableIntList) this.context).add(0);
                break;
            default:
                this.lastActivityManager = ((ArrayList) this.config).remove(r0.size() - 1);
                break;
        }
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList arrayList = (ArrayList) this.context;
        arrayList.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.mChildren.get(i);
            int[] iArr = constraintWidget.mListDimensionBehaviors;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.mDependencyGraph.isRegularFile = true;
    }

    private final /* synthetic */ void onEndChanges$androidx$compose$runtime$RecordingApplier() {
    }

    @Override // androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void requestPermission() {
    }

    public ProcessFinisher(ArrayList arrayList) {
        this.$r8$classId = 24;
        this.context = arrayList;
        this.config = new ArrayList(arrayList.size());
        this.lastActivityManager = new HashSet(3);
    }

    public ProcessFinisher(Context context, CoreConfiguration coreConfiguration) {
        this.$r8$classId = 29;
        this.context = context;
        this.config = coreConfiguration;
        this.lastActivityManager = new ReportLocator(context, 0);
    }

    public ProcessFinisher(Recomposer$$ExternalSyntheticLambda1 recomposer$$ExternalSyntheticLambda1) {
        this.$r8$classId = 6;
        this.context = new AtomicInt(0);
        this.config = new ComponentRegistry.Builder(2);
        this.lastActivityManager = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(this, recomposer$$ExternalSyntheticLambda1, 9);
    }

    public ProcessFinisher(SystemForegroundService systemForegroundService) {
        this.$r8$classId = 22;
        this.context = new LifecycleRegistry(systemForegroundService, true);
        this.config = new Handler(Looper.getMainLooper());
    }

    public ProcessFinisher(Dispatcher dispatcher) {
        this.$r8$classId = 27;
        this.context = dispatcher;
        DefaultSocket$SocketSource defaultSocket$SocketSource = (DefaultSocket$SocketSource) dispatcher.runningAsyncCalls;
        defaultSocket$SocketSource.getClass();
        this.config = new RealBufferedSource(defaultSocket$SocketSource);
        DefaultSocket$SocketSink defaultSocket$SocketSink = (DefaultSocket$SocketSink) dispatcher.runningSyncCalls;
        defaultSocket$SocketSink.getClass();
        this.lastActivityManager = new RealBufferedSink(defaultSocket$SocketSink);
    }

    public ProcessFinisher(App app, CoreConfiguration coreConfiguration) {
        this.$r8$classId = 28;
        this.context = app;
        this.config = coreConfiguration;
        this.lastActivityManager = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, ReportInteraction.class);
    }

    public ProcessFinisher(NavigationView navigationView) {
        Object materialBackOrchestrator$Api33BackCallbackDelegate;
        this.$r8$classId = 23;
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            materialBackOrchestrator$Api33BackCallbackDelegate = new MaterialBackOrchestrator$Api34BackCallbackDelegate();
        } else {
            materialBackOrchestrator$Api33BackCallbackDelegate = i >= 33 ? new MaterialBackOrchestrator$Api33BackCallbackDelegate() : null;
        }
        this.context = materialBackOrchestrator$Api33BackCallbackDelegate;
        this.config = navigationView;
        this.lastActivityManager = navigationView;
    }

    public ProcessFinisher(PagerState$$ExternalSyntheticLambda1 pagerState$$ExternalSyntheticLambda1) {
        this.$r8$classId = 4;
        this.context = pagerState$$ExternalSyntheticLambda1;
    }

    public ProcessFinisher(CanvasDrawScope canvasDrawScope) {
        this.$r8$classId = 10;
        this.lastActivityManager = canvasDrawScope;
        this.context = new PopupMenu$1(this, 23);
    }

    public ProcessFinisher(Context context, TypedArray typedArray) {
        this.$r8$classId = 2;
        this.context = context;
        this.config = typedArray;
    }

    public ProcessFinisher(Runnable runnable) {
        this.$r8$classId = 17;
        this.config = new CopyOnWriteArrayList();
        this.lastActivityManager = new HashMap();
        this.context = runnable;
    }

    public ProcessFinisher(Context context, LocationManager locationManager) {
        this.$r8$classId = 1;
        this.lastActivityManager = new TwilightManager$TwilightState();
        this.context = context;
        this.config = locationManager;
    }

    public ProcessFinisher(ConstraintWidgetContainer constraintWidgetContainer) {
        this.$r8$classId = 16;
        this.context = new ArrayList();
        this.config = new BasicMeasure$Measure();
        this.lastActivityManager = constraintWidgetContainer;
    }

    public ProcessFinisher(ParallelMap parallelMap, Subscriber[] subscriberArr, Subscriber[] subscriberArr2) {
        this.$r8$classId = 25;
        this.lastActivityManager = parallelMap;
        this.context = subscriberArr;
        this.config = subscriberArr2;
    }

    public ProcessFinisher(Dispatcher dispatcher, Transition.AnonymousClass1 anonymousClass1, DefaultGlyphChecker defaultGlyphChecker, Set set) {
        this.$r8$classId = 20;
        this.context = anonymousClass1;
        this.config = dispatcher;
        this.lastActivityManager = defaultGlyphChecker;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            process(str, 0, str.length(), 1, true, new Joiner(str, 1));
        }
    }

    public ProcessFinisher(TypefaceResult$Immutable typefaceResult$Immutable, ProcessFinisher processFinisher) {
        this.$r8$classId = 13;
        this.context = typefaceResult$Immutable;
        this.config = processFinisher;
        this.lastActivityManager = typefaceResult$Immutable.value;
    }

    public ProcessFinisher(LayoutNode layoutNode) {
        this.$r8$classId = 12;
        this.context = layoutNode;
        this.config = new ArrayList();
        this.lastActivityManager = layoutNode;
    }

    public ProcessFinisher(MemoryCacheService memoryCacheService) {
        this.$r8$classId = 19;
        this.context = memoryCacheService;
        this.config = Choreographer.getInstance();
        this.lastActivityManager = new Choreographer.FrameCallback() { // from class: androidx.dynamicanimation.animation.AnimationHandler$FrameCallbackProvider16$1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r14v3, types: [androidx.transition.Transition, androidx.transition.TransitionSet] */
            /* JADX WARN: Type inference failed for: r6v2, types: [int] */
            /* JADX WARN: Type inference failed for: r6v3 */
            /* JADX WARN: Type inference failed for: r6v8 */
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                boolean z;
                long j2;
                long j3;
                int i;
                long j4;
                long j5;
                int i2;
                SpringAnimation springAnimation;
                AnimationHandler animationHandler = (AnimationHandler) ((MemoryCacheService) ProcessFinisher.this.context).imageLoader;
                long uptimeMillis = SystemClock.uptimeMillis();
                ArrayList arrayList = animationHandler.mAnimationCallbacks;
                long uptimeMillis2 = SystemClock.uptimeMillis();
                boolean z2 = false;
                int i3 = 0;
                while (i3 < arrayList.size()) {
                    SpringAnimation springAnimation2 = (SpringAnimation) arrayList.get(i3);
                    if (springAnimation2 != null) {
                        SimpleArrayMap simpleArrayMap = animationHandler.mDelayedCallbackStartTime;
                        Long l = (Long) simpleArrayMap.get(springAnimation2);
                        if (l != null) {
                            if (l.longValue() < uptimeMillis2) {
                                simpleArrayMap.remove(springAnimation2);
                            }
                        }
                        long j6 = springAnimation2.mLastFrameTime;
                        if (j6 == 0) {
                            springAnimation2.mLastFrameTime = uptimeMillis;
                            springAnimation2.setPropertyValue(springAnimation2.mValue);
                        } else {
                            long j7 = uptimeMillis - j6;
                            springAnimation2.mLastFrameTime = uptimeMillis;
                            float f = springAnimation2.mPendingPosition;
                            SpringForce springForce = springAnimation2.mSpring;
                            if (f != Float.MAX_VALUE) {
                                double d = springForce.mFinalPosition;
                                long j8 = j7 / 2;
                                FlingCalculator updateValues = springForce.updateValues(springAnimation2.mValue, springAnimation2.mVelocity, j8);
                                SpringForce springForce2 = springAnimation2.mSpring;
                                springForce2.mFinalPosition = springAnimation2.mPendingPosition;
                                springAnimation2.mPendingPosition = Float.MAX_VALUE;
                                FlingCalculator updateValues2 = springForce2.updateValues(updateValues.friction, updateValues.magicPhysicalCoefficient, j8);
                                springAnimation2.mValue = updateValues2.friction;
                                springAnimation2.mVelocity = updateValues2.magicPhysicalCoefficient;
                            } else {
                                FlingCalculator updateValues3 = springForce.updateValues(springAnimation2.mValue, springAnimation2.mVelocity, j7);
                                springAnimation2.mValue = updateValues3.friction;
                                springAnimation2.mVelocity = updateValues3.magicPhysicalCoefficient;
                            }
                            float max = Math.max(springAnimation2.mValue, springAnimation2.mMinValue);
                            springAnimation2.mValue = max;
                            springAnimation2.mValue = Math.min(max, springAnimation2.mMaxValue);
                            float f2 = springAnimation2.mVelocity;
                            SpringForce springForce3 = springAnimation2.mSpring;
                            springForce3.getClass();
                            if (Math.abs(f2) >= springForce3.mVelocityThreshold || Math.abs(r9 - ((float) springForce3.mFinalPosition)) >= springForce3.mValueThreshold) {
                                z = z2 ? 1 : 0;
                            } else {
                                springAnimation2.mValue = (float) springAnimation2.mSpring.mFinalPosition;
                                springAnimation2.mVelocity = 0.0f;
                                z = true;
                            }
                            float min = Math.min(springAnimation2.mValue, springAnimation2.mMaxValue);
                            springAnimation2.mValue = min;
                            float max2 = Math.max(min, springAnimation2.mMinValue);
                            springAnimation2.mValue = max2;
                            springAnimation2.setPropertyValue(max2);
                            if (z) {
                                ArrayList arrayList2 = springAnimation2.mEndListeners;
                                springAnimation2.mRunning = z2;
                                ThreadLocal threadLocal = AnimationHandler.sAnimatorHandler;
                                if (threadLocal.get() == null) {
                                    threadLocal.set(new AnimationHandler());
                                }
                                AnimationHandler animationHandler2 = (AnimationHandler) threadLocal.get();
                                animationHandler2.mDelayedCallbackStartTime.remove(springAnimation2);
                                ArrayList arrayList3 = animationHandler2.mAnimationCallbacks;
                                int indexOf = arrayList3.indexOf(springAnimation2);
                                if (indexOf >= 0) {
                                    arrayList3.set(indexOf, null);
                                    animationHandler2.mListDirty = true;
                                }
                                springAnimation2.mLastFrameTime = 0L;
                                springAnimation2.mStartValueIsSet = z2;
                                int i4 = z2 ? 1 : 0;
                                boolean z3 = z2;
                                while (i4 < arrayList2.size()) {
                                    if (arrayList2.get(i4) != null) {
                                        Transition$SeekController$$ExternalSyntheticLambda0 transition$SeekController$$ExternalSyntheticLambda0 = (Transition$SeekController$$ExternalSyntheticLambda0) arrayList2.get(i4);
                                        float f3 = springAnimation2.mValue;
                                        Transition.SeekController seekController = transition$SeekController$$ExternalSyntheticLambda0.f$0;
                                        ?? r14 = seekController.this$0;
                                        DecodeUtils$$ExternalSyntheticBUOutline0 decodeUtils$$ExternalSyntheticBUOutline0 = Transition.TransitionNotification.ON_END;
                                        if (f3 < 1.0f) {
                                            j4 = uptimeMillis;
                                            long j9 = r14.mTotalDuration;
                                            Transition transitionAt = r14.getTransitionAt(z3);
                                            Transition transition = transitionAt.mCloneParent;
                                            transitionAt.mCloneParent = null;
                                            j5 = uptimeMillis2;
                                            i2 = i3;
                                            springAnimation = springAnimation2;
                                            r14.setCurrentPlayTimeMillis(-1L, seekController.mCurrentPlayTime);
                                            r14.setCurrentPlayTimeMillis(j9, -1L);
                                            seekController.mCurrentPlayTime = j9;
                                            Runnable runnable = seekController.mResetToStartState;
                                            if (runnable != null) {
                                                runnable.run();
                                            }
                                            r14.mAnimators.clear();
                                            if (transition != null) {
                                                transition.notifyFromTransition(transition, decodeUtils$$ExternalSyntheticBUOutline0, true);
                                            }
                                        } else {
                                            j4 = uptimeMillis;
                                            j5 = uptimeMillis2;
                                            i2 = i3;
                                            springAnimation = springAnimation2;
                                            r14.notifyFromTransition(r14, decodeUtils$$ExternalSyntheticBUOutline0, z3);
                                        }
                                        i4++;
                                        uptimeMillis = j4;
                                        i3 = i2;
                                        uptimeMillis2 = j5;
                                        springAnimation2 = springAnimation;
                                        z3 = 0;
                                    } else {
                                        j4 = uptimeMillis;
                                        j5 = uptimeMillis2;
                                        i2 = i3;
                                        springAnimation = springAnimation2;
                                    }
                                    i4++;
                                    uptimeMillis = j4;
                                    i3 = i2;
                                    uptimeMillis2 = j5;
                                    springAnimation2 = springAnimation;
                                    z3 = 0;
                                }
                                j2 = uptimeMillis;
                                j3 = uptimeMillis2;
                                i = i3;
                                for (int size = arrayList2.size() - 1; size >= 0; size--) {
                                    if (arrayList2.get(size) == null) {
                                        arrayList2.remove(size);
                                    }
                                }
                                i3 = i + 1;
                                uptimeMillis = j2;
                                uptimeMillis2 = j3;
                                z2 = false;
                            }
                        }
                    }
                    j2 = uptimeMillis;
                    j3 = uptimeMillis2;
                    i = i3;
                    i3 = i + 1;
                    uptimeMillis = j2;
                    uptimeMillis2 = j3;
                    z2 = false;
                }
                if (animationHandler.mListDirty) {
                    for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                        if (arrayList.get(size2) == null) {
                            arrayList.remove(size2);
                        }
                    }
                    animationHandler.mListDirty = false;
                }
                if (arrayList.size() > 0) {
                    if (animationHandler.mProvider == null) {
                        animationHandler.mProvider = new ProcessFinisher(animationHandler.mCallbackDispatcher);
                    }
                    ProcessFinisher processFinisher = animationHandler.mProvider;
                    ((Choreographer) processFinisher.config).postFrameCallback((AnimationHandler$FrameCallbackProvider16$1) processFinisher.lastActivityManager);
                }
            }
        };
    }

    public /* synthetic */ ProcessFinisher(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.context = obj;
        this.config = obj2;
        this.lastActivityManager = obj3;
    }

    public ProcessFinisher(Object obj) {
        this.$r8$classId = 7;
        this.context = new MutableIntList();
        this.config = new MutableObjectList();
        this.lastActivityManager = obj;
    }
}
