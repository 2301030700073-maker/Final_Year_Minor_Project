package androidx.compose.ui.contentcapture;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.paging.HintHandler;
import androidx.room.RoomDatabase$closeBarrier$1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager implements DefaultLifecycleObserver, View.OnAttachStateChangeListener {
    public boolean checkingForSemanticsChanges;
    public final Task$$ExternalSyntheticLambda0 contentCaptureChangeChecker;
    public ContentCaptureSessionWrapper contentCaptureSession;
    public MutableIntObjectMap currentSemanticsNodes;
    public long currentSemanticsNodesSnapshotTimestampMillis;
    public final RoomDatabase$closeBarrier$1 onContentCaptureSession;
    public final MutableIntObjectMap previousSemanticsNodes;
    public SemanticsNodeCopy previousSemanticsRoot;
    public final AndroidComposeView view;
    public final ArrayList bufferedEvents = new ArrayList();
    public TranslateStatus translateStatus = TranslateStatus.SHOW_ORIGINAL;
    public boolean currentSemanticsNodesInvalidated = true;
    public final BufferedChannel boundsUpdateChannel = DpKt.Channel$default(1, 6, null);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TranslateStatus {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TranslateStatus[] $VALUES;
        public static final TranslateStatus SHOW_ORIGINAL;
        public static final TranslateStatus SHOW_TRANSLATED;

        static {
            TranslateStatus translateStatus = new TranslateStatus("SHOW_ORIGINAL", 0);
            SHOW_ORIGINAL = translateStatus;
            TranslateStatus translateStatus2 = new TranslateStatus("SHOW_TRANSLATED", 1);
            SHOW_TRANSLATED = translateStatus2;
            TranslateStatus[] translateStatusArr = {translateStatus, translateStatus2};
            $VALUES = translateStatusArr;
            $ENTRIES = new EnumEntriesList(translateStatusArr);
        }

        public static TranslateStatus valueOf(String str) {
            return (TranslateStatus) Enum.valueOf(TranslateStatus.class, str);
        }

        public static TranslateStatus[] values() {
            return (TranslateStatus[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContentCaptureEventType.values().length];
            try {
                iArr[ContentCaptureEventType.VIEW_APPEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContentCaptureEventType.VIEW_DISAPPEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidContentCaptureManager(AndroidComposeView androidComposeView, RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1) {
        this.view = androidComposeView;
        this.onContentCaptureSession = roomDatabase$closeBarrier$1;
        new Handler(Looper.getMainLooper());
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        mutableIntObjectMap.getClass();
        this.currentSemanticsNodes = mutableIntObjectMap;
        this.previousSemanticsNodes = new MutableIntObjectMap();
        this.previousSemanticsRoot = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().getUnmergedRootSemanticsNode(), mutableIntObjectMap);
        this.contentCaptureChangeChecker = new Task$$ExternalSyntheticLambda0(5, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(100, r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0083 -> B:11:0x002b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = (androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1 r0 = new androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2d
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
        L2b:
            r9 = r2
            goto L44
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            r8 = 0
            return r8
        L34:
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L52
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r9 = new kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator
            kotlinx.coroutines.channels.BufferedChannel r2 = r8.boundsUpdateChannel
            r9.<init>()
        L44:
            r0.L$0 = r9
            r0.label = r4
            java.lang.Object r2 = r9.hasNext(r0)
            if (r2 != r1) goto L4f
            goto L85
        L4f:
            r7 = r2
            r2 = r9
            r9 = r7
        L52:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L86
            r2.next()
            boolean r9 = r8.isEnabled$ui()
            if (r9 == 0) goto L66
            r8.notifyContentCaptureChanges()
        L66:
            androidx.compose.ui.platform.AndroidComposeView r9 = r8.view
            android.os.Handler r9 = r9.getHandler()
            boolean r5 = r8.checkingForSemanticsChanges
            if (r5 != 0) goto L79
            if (r9 == 0) goto L79
            r8.checkingForSemanticsChanges = r4
            com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0 r5 = r8.contentCaptureChangeChecker
            r9.post(r5)
        L79:
            r0.L$0 = r2
            r0.label = r3
            r5 = 100
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.delay(r5, r0)
            if (r9 != r1) goto L2b
        L85:
            return r1
        L86:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void checkForContentCapturePropertyChanges(IntObjectMap intObjectMap) {
        int[] iArr;
        int[] iArr2;
        long j;
        char c;
        long j2;
        int i;
        int i2;
        long j3;
        long j4;
        IntObjectMap intObjectMap2 = intObjectMap;
        int[] iArr3 = intObjectMap2.keys;
        long[] jArr = intObjectMap2.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i3 = 0;
        while (true) {
            long j5 = jArr[i3];
            char c2 = 7;
            long j6 = -9187201950435737472L;
            if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i3 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j5 & 255) < 128) {
                        int i7 = iArr3[(i3 << 3) + i6];
                        c = c2;
                        SemanticsNodeCopy semanticsNodeCopy = (SemanticsNodeCopy) this.previousSemanticsNodes.get(i7);
                        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) intObjectMap2.get(i7);
                        SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.semanticsNode : null;
                        if (semanticsNode == null) {
                            throw Modifier.CC.m("no value for specified key");
                        }
                        j2 = j6;
                        int i8 = semanticsNode.id;
                        MutableScatterMap mutableScatterMap = semanticsNode.unmergedConfig.props;
                        if (semanticsNodeCopy == null) {
                            Object[] objArr = mutableScatterMap.keys;
                            long[] jArr2 = mutableScatterMap.metadata;
                            int length2 = jArr2.length - 2;
                            iArr2 = iArr3;
                            if (length2 >= 0) {
                                int i9 = i4;
                                int i10 = 0;
                                while (true) {
                                    long j7 = jArr2[i10];
                                    j = j5;
                                    if ((((~j7) << c) & j7 & j2) != j2) {
                                        int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                        for (int i12 = 0; i12 < i11; i12++) {
                                            if ((j7 & 255) < 128) {
                                                j4 = j7;
                                                SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) objArr[(i10 << 3) + i12];
                                                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.Text;
                                                if (Intrinsics.areEqual(semanticsPropertyKey, semanticsPropertyKey2)) {
                                                    Object obj = mutableScatterMap.get(semanticsPropertyKey2);
                                                    if (obj == null) {
                                                        obj = null;
                                                    }
                                                    List list = (List) obj;
                                                    sendContentCaptureTextUpdateEvent(i8, String.valueOf(list != null ? (AnnotatedString) CollectionsKt.firstOrNull(list) : null));
                                                }
                                            } else {
                                                j4 = j7;
                                            }
                                            j7 = j4 >> i9;
                                        }
                                        if (i11 != i9) {
                                            break;
                                        }
                                    }
                                    if (i10 == length2) {
                                        break;
                                    }
                                    i10++;
                                    j5 = j;
                                    i9 = 8;
                                }
                            } else {
                                j = j5;
                            }
                        } else {
                            iArr2 = iArr3;
                            j = j5;
                            Object[] objArr2 = mutableScatterMap.keys;
                            long[] jArr3 = mutableScatterMap.metadata;
                            int length3 = jArr3.length - 2;
                            if (length3 >= 0) {
                                long[] jArr4 = jArr3;
                                int i13 = 0;
                                while (true) {
                                    long j8 = jArr4[i13];
                                    long[] jArr5 = jArr4;
                                    i = i6;
                                    if ((((~j8) << c) & j8 & j2) != j2) {
                                        int i14 = 8 - ((~(i13 - length3)) >>> 31);
                                        int i15 = 0;
                                        while (i15 < i14) {
                                            if ((j8 & 255) < 128) {
                                                j3 = j8;
                                                SemanticsPropertyKey semanticsPropertyKey3 = (SemanticsPropertyKey) objArr2[(i13 << 3) + i15];
                                                SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.Text;
                                                if (Intrinsics.areEqual(semanticsPropertyKey3, semanticsPropertyKey4)) {
                                                    Object obj2 = semanticsNodeCopy.unmergedConfig.props.get(semanticsPropertyKey4);
                                                    if (obj2 == null) {
                                                        obj2 = null;
                                                    }
                                                    List list2 = (List) obj2;
                                                    AnnotatedString annotatedString = list2 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list2) : null;
                                                    Object obj3 = mutableScatterMap.get(semanticsPropertyKey4);
                                                    if (obj3 == null) {
                                                        obj3 = null;
                                                    }
                                                    List list3 = (List) obj3;
                                                    AnnotatedString annotatedString2 = list3 != null ? (AnnotatedString) CollectionsKt.firstOrNull(list3) : null;
                                                    if (!Intrinsics.areEqual(annotatedString, annotatedString2)) {
                                                        sendContentCaptureTextUpdateEvent(i8, String.valueOf(annotatedString2));
                                                    }
                                                }
                                            } else {
                                                j3 = j8;
                                            }
                                            i15++;
                                            j8 = j3 >> 8;
                                        }
                                        if (i14 != 8) {
                                            break;
                                        }
                                    }
                                    if (i13 == length3) {
                                        break;
                                    }
                                    i13++;
                                    i6 = i;
                                    jArr4 = jArr5;
                                }
                                i2 = 8;
                            }
                        }
                        i = i6;
                        i2 = 8;
                    } else {
                        iArr2 = iArr3;
                        j = j5;
                        c = c2;
                        j2 = j6;
                        i = i6;
                        i2 = i4;
                    }
                    j5 = j >> i2;
                    i6 = i + 1;
                    i4 = i2;
                    c2 = c;
                    j6 = j2;
                    iArr3 = iArr2;
                    intObjectMap2 = intObjectMap;
                }
                iArr = iArr3;
                if (i5 != i4) {
                    return;
                }
            } else {
                iArr = iArr3;
            }
            if (i3 == length) {
                return;
            }
            i3++;
            intObjectMap2 = intObjectMap;
            iArr3 = iArr;
        }
    }

    public final IntObjectMap getCurrentSemanticsNodes$ui() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodesInvalidated = false;
            this.currentSemanticsNodes = SemanticsNodeKt.getAllUncoveredSemanticsNodesToIntObjectMap(this.view.getSemanticsOwner(), AndroidContentCaptureManager$currentSemanticsNodes$1.INSTANCE);
            this.currentSemanticsNodesSnapshotTimestampMillis = System.currentTimeMillis();
        }
        return this.currentSemanticsNodes;
    }

    public final boolean isEnabled$ui() {
        return this.contentCaptureSession != null;
    }

    public final void notifyContentCaptureChanges() {
        ContentCaptureSessionWrapper contentCaptureSessionWrapper = this.contentCaptureSession;
        if (contentCaptureSessionWrapper != null && Build.VERSION.SDK_INT >= 29) {
            ArrayList arrayList = this.bufferedEvents;
            if (arrayList.isEmpty()) {
                return;
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) arrayList.get(i);
                int i2 = WhenMappings.$EnumSwitchMapping$0[contentCaptureEvent.type.ordinal()];
                if (i2 == 1) {
                    HintHandler hintHandler = contentCaptureEvent.structureCompat;
                    if (hintHandler != null) {
                        ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).notifyViewAppeared((ViewStructure) hintHandler.state);
                    }
                } else {
                    if (i2 != 2) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    ContentCaptureSessionCompat contentCaptureSessionCompat = (ContentCaptureSessionCompat) contentCaptureSessionWrapper;
                    AutofillId newAutofillId = contentCaptureSessionCompat.newAutofillId(contentCaptureEvent.id);
                    if (newAutofillId != null) {
                        contentCaptureSessionCompat.notifyViewDisappeared(newAutofillId);
                    }
                }
            }
            ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).flush();
            arrayList.clear();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.contentCaptureSession = (ContentCaptureSessionWrapper) this.onContentCaptureSession.invoke();
        updateBuffersOnAppeared(-1, this.view.getSemanticsOwner().getUnmergedRootSemanticsNode());
        notifyContentCaptureChanges();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        updateBuffersOnDisappeared(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode());
        notifyContentCaptureChanges();
        this.contentCaptureSession = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.view.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.contentCaptureChangeChecker);
        this.contentCaptureSession = null;
    }

    public final void sendContentCaptureAppearEvents(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$1 = new GlanceThemeKt$GlanceTheme$1(1, semanticsNodeCopy, this);
        semanticsNode.getClass();
        List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        int size = children$ui$default.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = children$ui$default.get(i2);
            if (getCurrentSemanticsNodes$ui().containsKey(((SemanticsNode) obj).id)) {
                glanceThemeKt$GlanceTheme$1.invoke(Integer.valueOf(i), obj);
                i++;
            }
        }
        List children$ui$default2 = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        int size2 = children$ui$default2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default2.get(i3);
            IntObjectMap currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
            int i4 = semanticsNode2.id;
            if (currentSemanticsNodes$ui.containsKey(i4)) {
                MutableIntObjectMap mutableIntObjectMap = this.previousSemanticsNodes;
                if (mutableIntObjectMap.containsKey(i4)) {
                    Object obj2 = mutableIntObjectMap.get(i4);
                    if (obj2 == null) {
                        throw Modifier.CC.m("node not present in pruned tree before this change");
                    }
                    sendContentCaptureAppearEvents(semanticsNode2, (SemanticsNodeCopy) obj2);
                } else {
                    continue;
                }
            }
        }
    }

    public final void sendContentCaptureTextUpdateEvent(int i, String str) {
        ContentCaptureSessionWrapper contentCaptureSessionWrapper;
        if (Build.VERSION.SDK_INT >= 29 && (contentCaptureSessionWrapper = this.contentCaptureSession) != null) {
            ContentCaptureSessionCompat contentCaptureSessionCompat = (ContentCaptureSessionCompat) contentCaptureSessionWrapper;
            AutofillId newAutofillId = contentCaptureSessionCompat.newAutofillId(i);
            if (newAutofillId == null) {
                throw Modifier.CC.m("Invalid content capture ID");
            }
            contentCaptureSessionCompat.notifyViewTextChanged(newAutofillId, str);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v20 android.view.autofill.AutofillId, still in use, count: 2, list:
          (r5v20 android.view.autofill.AutofillId) from 0x009a: IF  (r5v20 android.view.autofill.AutofillId) == (null android.view.autofill.AutofillId)  -> B:22:0x0075 A[HIDDEN] (LINE:155)
          (r5v20 android.view.autofill.AutofillId) from 0x00a1: PHI (r5v7 android.view.autofill.AutofillId) = (r5v6 android.view.autofill.AutofillId), (r5v20 android.view.autofill.AutofillId) binds: [B:100:0x009d, B:42:0x009a] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateBuffersOnAppeared(int r17, androidx.compose.ui.semantics.SemanticsNode r18) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.contentcapture.AndroidContentCaptureManager.updateBuffersOnAppeared(int, androidx.compose.ui.semantics.SemanticsNode):void");
    }

    public final void updateBuffersOnDisappeared(SemanticsNode semanticsNode) {
        if (isEnabled$ui()) {
            this.bufferedEvents.add(new ContentCaptureEvent(semanticsNode.id, this.currentSemanticsNodesSnapshotTimestampMillis, ContentCaptureEventType.VIEW_DISAPPEAR, null));
            List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
            int size = children$ui$default.size();
            for (int i = 0; i < size; i++) {
                updateBuffersOnDisappeared((SemanticsNode) children$ui$default.get(i));
            }
        }
    }

    public final void updateSemanticsCopy() {
        MutableIntObjectMap mutableIntObjectMap = this.previousSemanticsNodes;
        mutableIntObjectMap.clear();
        IntObjectMap currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
        int[] iArr = currentSemanticsNodes$ui.keys;
        Object[] objArr = currentSemanticsNodes$ui.values;
        long[] jArr = currentSemanticsNodes$ui.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            mutableIntObjectMap.set(iArr[i4], new SemanticsNodeCopy(((SemanticsNodeWithAdjustedBounds) objArr[i4]).semanticsNode, getCurrentSemanticsNodes$ui()));
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), getCurrentSemanticsNodes$ui());
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
