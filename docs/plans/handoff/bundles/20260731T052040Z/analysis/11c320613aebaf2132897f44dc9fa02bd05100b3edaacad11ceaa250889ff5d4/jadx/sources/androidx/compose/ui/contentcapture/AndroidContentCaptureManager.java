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
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.room.RoomDatabase$closeBarrier$1;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProduceKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidContentCaptureManager implements DefaultLifecycleObserver, View.OnAttachStateChangeListener {
    public boolean checkingForSemanticsChanges;
    public final ReportExecutor$$ExternalSyntheticLambda0 contentCaptureChangeChecker;
    public ContentCaptureSessionWrapper contentCaptureSession;
    public MutableIntObjectMap currentSemanticsNodes;
    public long currentSemanticsNodesSnapshotTimestampMillis;
    public final RoomDatabase$closeBarrier$1 onContentCaptureSession;
    public final MutableIntObjectMap previousSemanticsNodes;
    public SemanticsNodeCopy previousSemanticsRoot;
    public final AndroidComposeView view;
    public final ArrayList bufferedEvents = new ArrayList();
    public final long SendRecurringContentCaptureEventsIntervalMillis = 100;
    public TranslateStatus translateStatus = TranslateStatus.SHOW_ORIGINAL;
    public boolean currentSemanticsNodesInvalidated = true;
    public final BufferedChannel boundsUpdateChannel = ProduceKt.Channel$default(1, 6, null);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TranslateStatus {
        public static final /* synthetic */ TranslateStatus[] $VALUES;
        public static final TranslateStatus SHOW_ORIGINAL;
        public static final TranslateStatus SHOW_TRANSLATED;

        static {
            TranslateStatus translateStatus = new TranslateStatus("SHOW_ORIGINAL", 0);
            SHOW_ORIGINAL = translateStatus;
            TranslateStatus translateStatus2 = new TranslateStatus("SHOW_TRANSLATED", 1);
            SHOW_TRANSLATED = translateStatus2;
            $VALUES = new TranslateStatus[]{translateStatus, translateStatus2};
        }

        public static TranslateStatus valueOf(String str) {
            return (TranslateStatus) Enum.valueOf(TranslateStatus.class, str);
        }

        public static TranslateStatus[] values() {
            return (TranslateStatus[]) $VALUES.clone();
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
        this.contentCaptureChangeChecker = new ReportExecutor$$ExternalSyntheticLambda0(this, 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0052, code lost:
    
        if (r8 != r4) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r7.SendRecurringContentCaptureEventsIntervalMillis, r0) == r4) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0086 -> B:11:0x004a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop$ui(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.compose.ui.contentcapture.AndroidContentCaptureManager$boundsUpdatesEventLoop$1
            if (r0 == 0) goto L13
            r0 = r8
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
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2e
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4a
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            r7 = 0
            return r7
        L35:
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L55
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.BufferedChannel r8 = r7.boundsUpdateChannel
            r8.getClass()
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = new kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator
            r1.<init>()
        L4a:
            r0.L$0 = r1
            r0.label = r3
            java.lang.Object r8 = r1.hasNext(r0)
            if (r8 != r4) goto L55
            goto L88
        L55:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L89
            r1.next()
            boolean r8 = r7.isEnabled$ui()
            if (r8 == 0) goto L69
            r7.notifyContentCaptureChanges()
        L69:
            androidx.compose.ui.platform.AndroidComposeView r8 = r7.view
            android.os.Handler r8 = r8.getHandler()
            boolean r5 = r7.checkingForSemanticsChanges
            if (r5 != 0) goto L7c
            if (r8 == 0) goto L7c
            r7.checkingForSemanticsChanges = r3
            org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0 r5 = r7.contentCaptureChangeChecker
            r8.post(r5)
        L7c:
            r0.L$0 = r1
            r0.label = r2
            long r5 = r7.SendRecurringContentCaptureEventsIntervalMillis
            java.lang.Object r8 = kotlinx.coroutines.JobKt.delay(r5, r0)
            if (r8 != r4) goto L4a
        L88:
            return r4
        L89:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
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

    public final void fastForEachReplacedVisibleChildren(SemanticsNode semanticsNode, Function2 function2) {
        semanticsNode.getClass();
        List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        int size = children$ui$default.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = children$ui$default.get(i2);
            if (getCurrentSemanticsNodes$ui().containsKey(((SemanticsNode) obj).id)) {
                function2.invoke(Integer.valueOf(i), obj);
                i++;
            }
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
                int ordinal = contentCaptureEvent.type.ordinal();
                if (ordinal == 0) {
                    MemoryCacheService memoryCacheService = contentCaptureEvent.structureCompat;
                    if (memoryCacheService != null) {
                        ((ContentCaptureSessionCompat) contentCaptureSessionWrapper).notifyViewAppeared((ViewStructure) memoryCacheService.imageLoader);
                    }
                } else {
                    if (ordinal != 1) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
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

    public final void sendContentCaptureAppearEvents(SemanticsNode semanticsNode, final SemanticsNodeCopy semanticsNodeCopy) {
        fastForEachReplacedVisibleChildren(semanticsNode, new Function2() { // from class: androidx.compose.ui.contentcapture.AndroidContentCaptureManager$sendContentCaptureAppearEvents$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int intValue = ((Number) obj).intValue();
                SemanticsNode semanticsNode2 = (SemanticsNode) obj2;
                boolean contains = SemanticsNodeCopy.this.children.contains(semanticsNode2.id);
                Unit unit = Unit.INSTANCE;
                if (!contains) {
                    this.updateBuffersOnAppeared(intValue, semanticsNode2);
                    this.boundsUpdateChannel.mo691trySendJP2dKIU(unit);
                }
                return unit;
            }
        });
        List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i);
            IntObjectMap currentSemanticsNodes$ui = getCurrentSemanticsNodes$ui();
            int i2 = semanticsNode2.id;
            if (currentSemanticsNodes$ui.containsKey(i2)) {
                MutableIntObjectMap mutableIntObjectMap = this.previousSemanticsNodes;
                if (mutableIntObjectMap.containsKey(i2)) {
                    Object obj = mutableIntObjectMap.get(i2);
                    if (obj == null) {
                        throw Modifier.CC.m("node not present in pruned tree before this change");
                    }
                    sendContentCaptureAppearEvents(semanticsNode2, (SemanticsNodeCopy) obj);
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
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v24 android.view.autofill.AutofillId, still in use, count: 2, list:
          (r1v24 android.view.autofill.AutofillId) from 0x0095: IF  (r1v24 android.view.autofill.AutofillId) == (null android.view.autofill.AutofillId)  -> B:22:0x0070 A[HIDDEN] (LINE:150)
          (r1v24 android.view.autofill.AutofillId) from 0x009c: PHI (r1v11 android.view.autofill.AutofillId) = (r1v10 android.view.autofill.AutofillId), (r1v24 android.view.autofill.AutofillId) binds: [B:92:0x0098, B:34:0x0095] A[DONT_GENERATE, DONT_INLINE]
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
    /* JADX WARN: Removed duplicated region for block: B:24:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateBuffersOnAppeared(int r14, androidx.compose.ui.semantics.SemanticsNode r15) {
        /*
            Method dump skipped, instructions count: 434
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
