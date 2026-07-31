package androidx.compose.ui.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.WindowInsetsAnimation;
import android.view.animation.Animation;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.core.impl.Config;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.internal.Lock;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.FabPlacement;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.PathParserKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.constraintlayout.core.PriorityGoalRow;
import androidx.constraintlayout.core.SolverVariable;
import androidx.core.app.ActivityRecreator;
import androidx.core.graphics.Insets;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.provider.FontRequestWorker;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.emoji2.text.UnprecomputeTextOnModificationSpannable;
import androidx.emoji2.viewsintegration.EmojiEditableFactory;
import androidx.emoji2.viewsintegration.EmojiTextWatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
import androidx.fragment.app.FragmentManager;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceGroupAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import androidx.recyclerview.widget.ViewInfoStore$InfoRecord;
import androidx.room.RoomConnectionManager;
import androidx.sqlite.SQLiteDriver;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.message.html.EmailSection;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.jcraft.jzlib.Adler32;
import com.jcraft.jzlib.Deflate;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WeakCache implements CancellationHandle, OperationErrorContext, Saver, SegmentFinder, EmojiProcessor$EmojiProcessCallback, Preference.OnPreferenceClickListener, SQLiteDriver {
    public final /* synthetic */ int $r8$classId;
    public Object referenceQueue;
    public Object values;

    public WeakCache(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 4:
                this.referenceQueue = new float[64];
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                this.values = new MutableVector(new LayoutNode[16]);
                break;
            case 10:
                this.values = new Lock();
                this.referenceQueue = new LruCache(16);
                break;
            case 17:
                this.values = Choreographer.getInstance();
                this.referenceQueue = Looper.myLooper();
                break;
            case 25:
                this.values = new SparseIntArray();
                this.referenceQueue = new SparseIntArray();
                break;
            case 28:
                this.values = new SimpleArrayMap(0);
                this.referenceQueue = new LongSparseArray((Object) null);
                break;
            default:
                this.values = new MutableVector(new Reference[16]);
                this.referenceQueue = new ReferenceQueue();
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public static void dispatchHierarchy(LayoutNode layoutNode) {
        if (layoutNode.globallyPositionedObservers > 0) {
            if (layoutNode.layoutDelegate.layoutState == LayoutNode.LayoutState.Idle && !layoutNode.getLayoutPending$ui() && !layoutNode.getMeasurePending$ui() && !layoutNode.isDeactivated && layoutNode.isPlaced()) {
                Modifier.Node node = (Modifier.Node) layoutNode.nodes.head;
                if ((node.aggregateChildKindSet & 256) != 0) {
                    while (node != null) {
                        if ((node.kindSet & 256) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r5 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof GlobalPositionAwareModifierNode) {
                                    GlobalPositionAwareModifierNode globalPositionAwareModifierNode = (GlobalPositionAwareModifierNode) delegatingNode;
                                    globalPositionAwareModifierNode.onGloballyPositioned(HitTestResultKt.m604requireCoordinator64DMado(globalPositionAwareModifierNode, 256));
                                } else if ((delegatingNode.kindSet & 256) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.delegate;
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r5 = r5;
                                    while (node2 != null) {
                                        if ((node2.kindSet & 256) != 0) {
                                            i++;
                                            r5 = r5;
                                            if (i == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r5 == 0) {
                                                    r5 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r5.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r5.add(node2);
                                            }
                                        }
                                        node2 = node2.child;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.access$pop(r5);
                            }
                        }
                        if ((node.aggregateChildKindSet & 256) == 0) {
                            break;
                        } else {
                            node = node.child;
                        }
                    }
                }
            }
            layoutNode.needsOnGloballyPositionedDispatch = false;
            MutableVector mutableVector = layoutNode.get_children$ui();
            Object[] objArr = mutableVector.content;
            int i2 = mutableVector.size;
            for (int i3 = 0; i3 < i2; i3++) {
                dispatchHierarchy((LayoutNode) objArr[i3]);
            }
        }
    }

    public static int getSpanGroupIndex(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        return i3 + 1 > i2 ? i4 + 1 : i4;
    }

    public void addToPostLayout(RecyclerView.ViewHolder viewHolder, FabPlacement fabPlacement) {
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.values;
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            viewInfoStore$InfoRecord = ViewInfoStore$InfoRecord.obtain();
            simpleArrayMap.put(viewHolder, viewInfoStore$InfoRecord);
        }
        viewInfoStore$InfoRecord.postInfo = fabPlacement;
        viewInfoStore$InfoRecord.flags |= 8;
    }

    public TextFieldValue apply(List list) {
        EditCommand editCommand;
        EditCommand editCommand2 = null;
        try {
            int size = list.size();
            int i = 0;
            EditCommand editCommand3 = null;
            while (i < size) {
                try {
                    editCommand = (EditCommand) list.get(i);
                } catch (Exception e) {
                    e = e;
                    editCommand2 = editCommand3;
                }
                try {
                    editCommand.applyTo((PlanarYUVLuminanceSource) this.referenceQueue);
                    i++;
                    editCommand3 = editCommand;
                } catch (Exception e2) {
                    e = e2;
                    editCommand2 = editCommand;
                    StringBuilder sb = new StringBuilder();
                    StringBuilder sb2 = new StringBuilder("Error while applying EditCommand batch to buffer (length=");
                    sb2.append(((EmailSection.Builder) ((PlanarYUVLuminanceSource) this.referenceQueue).yuvData).getLength());
                    sb2.append(", composition=");
                    sb2.append(((PlanarYUVLuminanceSource) this.referenceQueue).m950getCompositionMzsxiRA$ui_text());
                    sb2.append(", selection=");
                    PlanarYUVLuminanceSource planarYUVLuminanceSource = (PlanarYUVLuminanceSource) this.referenceQueue;
                    sb2.append((Object) TextRange.m704toStringimpl(ParagraphKt.TextRange(planarYUVLuminanceSource.width, planarYUVLuminanceSource.height)));
                    sb2.append("):");
                    sb.append(sb2.toString());
                    sb.append('\n');
                    CollectionsKt.joinTo$default(list, sb, "\n", null, null, new DiskLruCache$$ExternalSyntheticLambda0(editCommand2, this), 60);
                    throw new RuntimeException(sb.toString(), e);
                }
            }
            PlanarYUVLuminanceSource planarYUVLuminanceSource2 = (PlanarYUVLuminanceSource) this.referenceQueue;
            planarYUVLuminanceSource2.getClass();
            AnnotatedString annotatedString = new AnnotatedString(((EmailSection.Builder) planarYUVLuminanceSource2.yuvData).toString());
            PlanarYUVLuminanceSource planarYUVLuminanceSource3 = (PlanarYUVLuminanceSource) this.referenceQueue;
            long TextRange = ParagraphKt.TextRange(planarYUVLuminanceSource3.width, planarYUVLuminanceSource3.height);
            TextRange textRange = TextRange.m703getReversedimpl(((TextFieldValue) this.values).selection) ? null : new TextRange(TextRange);
            TextFieldValue textFieldValue = new TextFieldValue(annotatedString, textRange != null ? textRange.packedValue : ParagraphKt.TextRange(TextRange.m701getMaximpl(TextRange), TextRange.m702getMinimpl(TextRange)), ((PlanarYUVLuminanceSource) this.referenceQueue).m950getCompositionMzsxiRA$ui_text());
            this.values = textFieldValue;
            return textFieldValue;
        } catch (Exception e3) {
            e = e3;
        }
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public List buildStackTrace(Integer num) {
        List buildStackTrace = ((OperationErrorContext) this.values).buildStackTrace(null);
        SlotWriter slotWriter = (SlotWriter) this.referenceQueue;
        int i = slotWriter.parent;
        return i < 0 ? buildStackTrace : CollectionsKt.plus((Collection) Utf8.SafeProcessor.buildTrace(slotWriter, num, i, Integer.valueOf(slotWriter.parent(slotWriter.groups, i))), (Iterable) buildStackTrace);
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
        if (((AtomicInt) this.referenceQueue).compareAndSet(1, 1)) {
            return;
        }
        ((ConnectPlan$$ExternalSyntheticLambda0) this.values).invoke();
    }

    public void clear() {
        int[] iArr = (int[]) this.values;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.referenceQueue = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if (r4 < r1) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatch() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.values
            androidx.compose.runtime.collection.MutableVector r0 = (androidx.compose.runtime.collection.MutableVector) r0
            java.lang.Object[] r1 = r0.content
            int r2 = r0.size
            r3 = 0
            androidx.compose.ui.node.DepthSortedSetKt$DepthComparator$1 r4 = androidx.compose.ui.node.DepthSortedSetKt$DepthComparator$1.INSTANCE
            java.util.Arrays.sort(r1, r3, r2, r4)
            int r1 = r0.size
            java.lang.Object r2 = r6.referenceQueue
            androidx.compose.ui.node.LayoutNode[] r2 = (androidx.compose.ui.node.LayoutNode[]) r2
            if (r2 == 0) goto L19
            int r4 = r2.length
            if (r4 >= r1) goto L21
        L19:
            r2 = 16
            int r2 = java.lang.Math.max(r2, r1)
            androidx.compose.ui.node.LayoutNode[] r2 = new androidx.compose.ui.node.LayoutNode[r2]
        L21:
            r4 = 0
            r6.referenceQueue = r4
        L24:
            if (r3 >= r1) goto L2f
            java.lang.Object[] r5 = r0.content
            r5 = r5[r3]
            r2[r3] = r5
            int r3 = r3 + 1
            goto L24
        L2f:
            r0.clear()
            int r1 = r1 + (-1)
        L34:
            r0 = -1
            if (r0 >= r1) goto L48
            r0 = r2[r1]
            r0.getClass()
            boolean r3 = r0.needsOnGloballyPositionedDispatch
            if (r3 == 0) goto L43
            dispatchHierarchy(r0)
        L43:
            r2[r1] = r4
            int r1 = r1 + (-1)
            goto L34
        L48:
            r6.referenceQueue = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WeakCache.dispatch():void");
    }

    public void dispatchOnFragmentActivityCreated(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentAttached(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.values;
        AppCompatActivity appCompatActivity = fragmentManager.mHost.context;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentCreated(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentDestroyed(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentDetached(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDetached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPaused(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPaused(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPreAttached(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = (FragmentManager) this.values;
        AppCompatActivity appCompatActivity = fragmentManager.mHost.context;
        Fragment fragment2 = fragmentManager.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPreCreated(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentResumed(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentResumed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentStarted(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStarted(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentStopped(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStopped(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentViewCreated(Fragment fragment, View view, boolean z) {
        fragment.getClass();
        view.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment, view, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
                FragmentManager fragmentManager = (FragmentManager) this.values;
                if (fragment == ((Fragment) base64Util.alphabet)) {
                    WeakCache weakCache = fragmentManager.mLifecycleCallbacksDispatcher;
                    weakCache.getClass();
                    synchronized (((CopyOnWriteArrayList) weakCache.referenceQueue)) {
                        int size = ((CopyOnWriteArrayList) weakCache.referenceQueue).size();
                        int i = 0;
                        while (true) {
                            if (i >= size) {
                                break;
                            }
                            if (((FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) ((CopyOnWriteArrayList) weakCache.referenceQueue).get(i)).callback == base64Util) {
                                ((CopyOnWriteArrayList) weakCache.referenceQueue).remove(i);
                                break;
                            }
                            i++;
                        }
                    }
                    MessageViewContainerFragment.MessageViewContainerAdapter.addViewToContainer(view, (FrameLayout) base64Util.inverseAlphabet);
                } else {
                    continue;
                }
            }
        }
    }

    public void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z) {
        fragment.getClass();
        Fragment fragment2 = ((FragmentManager) this.values).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.referenceQueue).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (z) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.getClass();
            } else {
                Base64Util base64Util = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void ensureSize(int i) {
        int[] iArr = (int[]) this.values;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.values = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.values = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.values;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View findOneViewWithinBoundFlags(int i, int i2, int i3, int i4) {
        View childAt;
        Deflate.Config config = (Deflate.Config) this.referenceQueue;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.values;
        int parentStart = anonymousClass1.getParentStart();
        int parentEnd = anonymousClass1.getParentEnd();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            switch (anonymousClass1.$r8$classId) {
                case 0:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
                default:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
            }
            int childStart = anonymousClass1.getChildStart(childAt);
            int childEnd = anonymousClass1.getChildEnd(childAt);
            config.max_lazy = parentStart;
            config.nice_length = parentEnd;
            config.max_chain = childStart;
            config.func = childEnd;
            if (i3 != 0) {
                config.good_length = i3;
                if (config.boundsMatch()) {
                    return childAt;
                }
            }
            if (i4 != 0) {
                config.good_length = i4;
                if (config.boundsMatch()) {
                    view = childAt;
                }
            }
            i += i5;
        }
        return view;
    }

    public MeasurePolicy getMeasurePolicyState() {
        return (MeasurePolicy) ((ParcelableSnapshotMutableState) this.referenceQueue).getValue();
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public Object getResult() {
        return (UnprecomputeTextOnModificationSpannable) this.values;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public boolean getSourceInformationEnabled() {
        return ((OperationErrorContext) this.values).getSourceInformationEnabled();
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if ((typefaceEmojiRasterizer.mCache & 4) > 0) {
            return true;
        }
        if (((UnprecomputeTextOnModificationSpannable) this.values) == null) {
            this.values = new UnprecomputeTextOnModificationSpannable(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((Adler32) this.referenceQueue).getClass();
        ((UnprecomputeTextOnModificationSpannable) this.values).setSpan(new TypefaceEmojiSpan(typefaceEmojiRasterizer), i, i2, 33);
        return true;
    }

    public void invalidateSpanIndexCache() {
        ((SparseIntArray) this.values).clear();
    }

    public boolean isViewWithinBoundFlags(View view) {
        Deflate.Config config = (Deflate.Config) this.referenceQueue;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.values;
        int parentStart = anonymousClass1.getParentStart();
        int parentEnd = anonymousClass1.getParentEnd();
        int childStart = anonymousClass1.getChildStart(view);
        int childEnd = anonymousClass1.getChildEnd(view);
        config.max_lazy = parentStart;
        config.nice_length = parentEnd;
        config.max_chain = childStart;
        config.func = childEnd;
        config.good_length = 24579;
        return config.boundsMatch();
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextEndBoundary(int i) {
        do {
            i = ((EmailSection.Builder) this.referenceQueue).nextBoundary(i);
            if (i == -1) {
                return -1;
            }
        } while (Character.isWhitespace(((CharSequence) this.values).charAt(i - 1)));
        return i;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextStartBoundary(int i) {
        CharSequence charSequence = (CharSequence) this.values;
        do {
            i = ((EmailSection.Builder) this.referenceQueue).nextBoundary(i);
            if (i == -1 || i == charSequence.length()) {
                return -1;
            }
        } while (Character.isWhitespace(charSequence.charAt(i)));
        return i;
    }

    public void offsetForAddition(int i, int i2) {
        int[] iArr = (int[]) this.values;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        int[] iArr2 = (int[]) this.values;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.values, i, i3, -1);
        ArrayList arrayList = (ArrayList) this.referenceQueue;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.referenceQueue).get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i4 >= i) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 + i2;
            }
        }
    }

    public void offsetForRemoval(int i, int i2) {
        int[] iArr = (int[]) this.values;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        int[] iArr2 = (int[]) this.values;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.values;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.referenceQueue;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.referenceQueue).get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((ArrayList) this.referenceQueue).remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 - i2;
                }
            }
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        ((PreferenceGroup) this.values).mInitialExpandedChildrenCount = Integer.MAX_VALUE;
        PreferenceGroupAdapter preferenceGroupAdapter = (PreferenceGroupAdapter) this.referenceQueue;
        Handler handler = preferenceGroupAdapter.mHandler;
        Fragment.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
        handler.removeCallbacks(anonymousClass1);
        handler.post(anonymousClass1);
        return true;
    }

    public void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
        HandlerExecutor handlerExecutor = (HandlerExecutor) this.referenceQueue;
        Fragment.AnonymousClass7 anonymousClass7 = (Fragment.AnonymousClass7) this.values;
        int i = typefaceResult.mResult;
        if (i != 0) {
            handlerExecutor.execute(new CallbackWrapper$2(i, 0, anonymousClass7));
        } else {
            handlerExecutor.execute(new ActivityRecreator.AnonymousClass1(6, anonymousClass7, typefaceResult.mTypeface));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #6 {all -> 0x00bd, blocks: (B:61:0x00bc, B:62:0x00bf, B:63:0x00d7), top: B:59:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bf A[Catch: all -> 0x00bd, TryCatch #6 {all -> 0x00bd, blocks: (B:61:0x00bc, B:62:0x00bf, B:63:0x00d7), top: B:59:0x00ba }] */
    @Override // androidx.sqlite.SQLiteDriver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.sqlite.SQLiteConnection open(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WeakCache.open(java.lang.String):androidx.sqlite.SQLiteConnection");
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x0209, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0109 A[Catch: IOException -> 0x0091, XmlPullParserException -> 0x0094, TryCatch #2 {IOException -> 0x0091, XmlPullParserException -> 0x0094, blocks: (B:19:0x0062, B:28:0x0209, B:29:0x0074, B:30:0x0082, B:33:0x0087, B:41:0x0097, B:44:0x00b1, B:47:0x00a0, B:51:0x00a9, B:54:0x00bf, B:57:0x00ce, B:59:0x00d6, B:62:0x00e0, B:66:0x0109, B:69:0x0110, B:70:0x0128, B:72:0x00e9, B:74:0x00f1, B:77:0x00ff, B:80:0x0129, B:82:0x0131, B:85:0x013f, B:88:0x0149, B:91:0x0154, B:92:0x016c, B:94:0x016d, B:97:0x0177, B:100:0x0182, B:101:0x019a, B:103:0x019b, B:105:0x01a3, B:108:0x01ac, B:111:0x01b6, B:114:0x01c0, B:115:0x01d8, B:117:0x01d9, B:120:0x01e3, B:123:0x01ed, B:124:0x0205, B:127:0x0206), top: B:18:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0110 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseConstraintSet(android.content.Context r12, android.content.res.XmlResourceParser r13) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WeakCache.parseConstraintSet(android.content.Context, android.content.res.XmlResourceParser):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void pathStringToNodes(String str, ArrayList arrayList) {
        int i;
        char charAt;
        char c;
        float intBitsToFloat;
        int length = str.length();
        char c2 = 0;
        int i2 = 0;
        while (i2 < length && Intrinsics.compare((int) str.charAt(i2), 32) <= 0) {
            i2++;
        }
        while (length > i2 && Intrinsics.compare((int) str.charAt(length - 1), 32) <= 0) {
            length--;
        }
        int i3 = 0;
        while (i2 < length) {
            while (true) {
                i = i2 + 1;
                charAt = str.charAt(i2);
                int i4 = charAt | ' ';
                if ((i4 - 122) * (i4 - 97) > 0 || i4 == 101) {
                    if (i >= length) {
                        charAt = c2;
                    } else {
                        i2 = i;
                    }
                }
            }
            if (charAt != 0) {
                int i5 = charAt | ' ';
                if (i5 != 122) {
                    while (i < length && Intrinsics.compare((int) str.charAt(i), 32) <= 0) {
                        i++;
                    }
                    char c3 = i5 == 97 ? (char) 1 : c2;
                    int i6 = c2;
                    do {
                        long nextFloat = (c3 == 0 || 3 > i6 || i6 >= 5) ? PathParserKt.nextFloat(i, str, length) : PathParserKt.nextFloat(i, str, Math.min(i + 1, length));
                        i = (int) (nextFloat >>> 32);
                        intBitsToFloat = Float.intBitsToFloat((int) (nextFloat & 4294967295L));
                        if (!Float.isNaN(intBitsToFloat)) {
                            float[] fArr = (float[]) this.referenceQueue;
                            int i7 = i6 + 1;
                            fArr[i6] = intBitsToFloat;
                            if (i7 >= fArr.length) {
                                float[] fArr2 = new float[i7 * 2];
                                this.referenceQueue = fArr2;
                                System.arraycopy(fArr, c2, fArr2, c2, fArr.length);
                            }
                            i6 = i7;
                        }
                        while (i < length && (Intrinsics.compare((int) str.charAt(i), 32) <= 0 || str.charAt(i) == ',')) {
                            i++;
                        }
                        if (i < length) {
                        }
                        i3 = i6;
                    } while (!Float.isNaN(intBitsToFloat));
                    i3 = i6;
                }
                float[] fArr3 = (float[]) this.referenceQueue;
                int i8 = 2;
                switch (charAt) {
                    case 'A':
                        c = c2;
                        int i9 = i3 - 7;
                        for (int i10 = c; i10 <= i9; i10 += 7) {
                            arrayList.add(new PathNode.ArcTo(fArr3[i10], fArr3[i10 + 1], fArr3[i10 + 2], Float.compare(fArr3[i10 + 3], 0.0f) != 0 ? 1 : c, Float.compare(fArr3[i10 + 4], 0.0f) != 0 ? 1 : c, fArr3[i10 + 5], fArr3[i10 + 6]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'C':
                        c = c2;
                        int i11 = i3 - 6;
                        for (int i12 = c; i12 <= i11; i12 += 6) {
                            arrayList.add(new PathNode.CurveTo(fArr3[i12], fArr3[i12 + 1], fArr3[i12 + 2], fArr3[i12 + 3], fArr3[i12 + 4], fArr3[i12 + 5]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'H':
                        c = c2;
                        int i13 = i3 - 1;
                        for (int i14 = c; i14 <= i13; i14++) {
                            arrayList.add(new PathNode.HorizontalTo(fArr3[i14]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'L':
                        c = c2;
                        int i15 = i3 - 2;
                        for (int i16 = c; i16 <= i15; i16 += 2) {
                            arrayList.add(new PathNode.LineTo(fArr3[i16], fArr3[i16 + 1]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'M':
                        c = c2;
                        int i17 = i3 - 2;
                        if (i17 >= 0) {
                            arrayList.add(new PathNode.MoveTo(fArr3[c], fArr3[1]));
                            while (i8 <= i17) {
                                arrayList.add(new PathNode.LineTo(fArr3[i8], fArr3[i8 + 1]));
                                i8 += 2;
                            }
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'Q':
                        c = c2;
                        int i18 = i3 - 4;
                        for (int i19 = c; i19 <= i18; i19 += 4) {
                            arrayList.add(new PathNode.QuadTo(fArr3[i19], fArr3[i19 + 1], fArr3[i19 + 2], fArr3[i19 + 3]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'S':
                        c = c2;
                        int i20 = i3 - 4;
                        for (int i21 = c; i21 <= i20; i21 += 4) {
                            arrayList.add(new PathNode.ReflectiveCurveTo(fArr3[i21], fArr3[i21 + 1], fArr3[i21 + 2], fArr3[i21 + 3]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'T':
                        c = c2;
                        int i22 = i3 - 2;
                        for (int i23 = c; i23 <= i22; i23 += 2) {
                            arrayList.add(new PathNode.ReflectiveQuadTo(fArr3[i23], fArr3[i23 + 1]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'V':
                        c = c2;
                        int i24 = i3 - 1;
                        for (int i25 = c; i25 <= i24; i25++) {
                            arrayList.add(new PathNode.VerticalTo(fArr3[i25]));
                        }
                        i2 = i;
                        c2 = c;
                        break;
                    case 'Z':
                    case 'z':
                        c = c2;
                        arrayList.add(PathNode.Close.INSTANCE);
                        i2 = i;
                        c2 = c;
                        break;
                    case 'a':
                        int i26 = i3 - 7;
                        int i27 = c2;
                        while (i27 <= i26) {
                            char c4 = c2;
                            arrayList.add(new PathNode.RelativeArcTo(fArr3[i27], fArr3[i27 + 1], fArr3[i27 + 2], Float.compare(fArr3[i27 + 3], 0.0f) != 0 ? 1 : c4, Float.compare(fArr3[i27 + 4], 0.0f) != 0 ? 1 : c4, fArr3[i27 + 5], fArr3[i27 + 6]));
                            i27 += 7;
                            c2 = c4;
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'c':
                        int i28 = i3 - 6;
                        for (int i29 = c2; i29 <= i28; i29 += 6) {
                            arrayList.add(new PathNode.RelativeCurveTo(fArr3[i29], fArr3[i29 + 1], fArr3[i29 + 2], fArr3[i29 + 3], fArr3[i29 + 4], fArr3[i29 + 5]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'h':
                        int i30 = i3 - 1;
                        for (int i31 = c2; i31 <= i30; i31++) {
                            arrayList.add(new PathNode.RelativeHorizontalTo(fArr3[i31]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'l':
                        int i32 = i3 - 2;
                        for (int i33 = c2; i33 <= i32; i33 += 2) {
                            arrayList.add(new PathNode.RelativeLineTo(fArr3[i33], fArr3[i33 + 1]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'm':
                        int i34 = i3 - 2;
                        if (i34 >= 0) {
                            arrayList.add(new PathNode.RelativeMoveTo(fArr3[c2], fArr3[1]));
                            while (i8 <= i34) {
                                arrayList.add(new PathNode.RelativeLineTo(fArr3[i8], fArr3[i8 + 1]));
                                i8 += 2;
                            }
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'q':
                        int i35 = i3 - 4;
                        for (int i36 = c2; i36 <= i35; i36 += 4) {
                            arrayList.add(new PathNode.RelativeQuadTo(fArr3[i36], fArr3[i36 + 1], fArr3[i36 + 2], fArr3[i36 + 3]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 's':
                        int i37 = i3 - 4;
                        for (int i38 = c2; i38 <= i37; i38 += 4) {
                            arrayList.add(new PathNode.RelativeReflectiveCurveTo(fArr3[i38], fArr3[i38 + 1], fArr3[i38 + 2], fArr3[i38 + 3]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 't':
                        int i39 = i3 - 2;
                        for (int i40 = c2; i40 <= i39; i40 += 2) {
                            arrayList.add(new PathNode.RelativeReflectiveQuadTo(fArr3[i40], fArr3[i40 + 1]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    case 'v':
                        int i41 = i3 - 1;
                        for (int i42 = c2; i42 <= i41; i42++) {
                            arrayList.add(new PathNode.RelativeVerticalTo(fArr3[i42]));
                        }
                        c = c2;
                        i2 = i;
                        c2 = c;
                        break;
                    default:
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unknown command for: ", charAt);
                        break;
                }
                return;
            }
            i2 = i;
        }
    }

    public FabPlacement popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord;
        FabPlacement fabPlacement;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.values;
        int indexOfKey = simpleArrayMap.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.valueAt(indexOfKey)) != null) {
            int i2 = viewInfoStore$InfoRecord.flags;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                viewInfoStore$InfoRecord.flags = i3;
                if (i == 4) {
                    fabPlacement = viewInfoStore$InfoRecord.preInfo;
                } else if (i == 8) {
                    fabPlacement = viewInfoStore$InfoRecord.postInfo;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.removeAt(indexOfKey);
                    viewInfoStore$InfoRecord.flags = 0;
                    viewInfoStore$InfoRecord.preInfo = null;
                    viewInfoStore$InfoRecord.postInfo = null;
                    ViewInfoStore$InfoRecord.sPool.release(viewInfoStore$InfoRecord);
                }
                return fabPlacement;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousEndBoundary(int i) {
        do {
            i = ((EmailSection.Builder) this.referenceQueue).prevBoundary(i);
            if (i == -1 || i == 0) {
                return -1;
            }
        } while (Character.isWhitespace(((CharSequence) this.values).charAt(i - 1)));
        return i;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousStartBoundary(int i) {
        do {
            i = ((EmailSection.Builder) this.referenceQueue).prevBoundary(i);
            if (i == -1) {
                return -1;
            }
        } while (Character.isWhitespace(((CharSequence) this.values).charAt(i)));
        return i;
    }

    public void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.values).get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            return;
        }
        viewInfoStore$InfoRecord.flags &= -2;
    }

    public void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = (LongSparseArray) this.referenceQueue;
        int size = longSparseArray.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (viewHolder == longSparseArray.valueAt(size)) {
                Object[] objArr = longSparseArray.values;
                Object obj = objArr[size];
                Object obj2 = ArraySetKt.DELETED;
                if (obj != obj2) {
                    objArr[size] = obj2;
                    longSparseArray.garbage = true;
                }
            } else {
                size--;
            }
        }
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.values).remove(viewHolder);
        if (viewInfoStore$InfoRecord != null) {
            viewInfoStore$InfoRecord.flags = 0;
            viewInfoStore$InfoRecord.preInfo = null;
            viewInfoStore$InfoRecord.postInfo = null;
            ViewInfoStore$InfoRecord.sPool.release(viewInfoStore$InfoRecord);
        }
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public Object restore(Object obj) {
        return ((Function1) this.referenceQueue).invoke(obj);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public Object save(SaveableHolder saveableHolder, Object obj) {
        return ((Function2) this.values).invoke(saveableHolder, obj);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case BasicTextKt.ShiftMeta /* 12 */:
                String str = "[ ";
                if (((SolverVariable) this.values) != null) {
                    for (int i = 0; i < 9; i++) {
                        StringBuilder m = Modifier.CC.m(str);
                        m.append(((SolverVariable) this.values).mGoalStrengthVector[i]);
                        m.append(" ");
                        str = m.toString();
                    }
                }
                StringBuilder m2 = Config.CC.m(str, "] ");
                m2.append((SolverVariable) this.values);
                return m2.toString();
            case OffsetKt.Horizontal /* 15 */:
                return "Bounds{lower=" + ((Insets) this.values) + " upper=" + ((Insets) this.referenceQueue) + "}";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ WeakCache(int i, boolean z) {
        this.$r8$classId = i;
    }

    public WeakCache(FragmentManager fragmentManager) {
        this.$r8$classId = 21;
        this.values = fragmentManager;
        this.referenceQueue = new CopyOnWriteArrayList();
    }

    public /* synthetic */ WeakCache(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.values = obj;
        this.referenceQueue = obj2;
    }

    public WeakCache(LayoutNode layoutNode, MeasurePolicy measurePolicy) {
        this.$r8$classId = 6;
        this.values = layoutNode;
        this.referenceQueue = Updater.mutableStateOf$default(measurePolicy);
    }

    public WeakCache(PriorityGoalRow priorityGoalRow) {
        this.$r8$classId = 12;
        this.referenceQueue = priorityGoalRow;
    }

    public WeakCache(ConnectPlan$$ExternalSyntheticLambda0 connectPlan$$ExternalSyntheticLambda0) {
        this.$r8$classId = 1;
        this.values = connectPlan$$ExternalSyntheticLambda0;
        this.referenceQueue = new AtomicInt(0);
    }

    public WeakCache(RoomConnectionManager roomConnectionManager, SQLiteDriver sQLiteDriver) {
        this.$r8$classId = 29;
        sQLiteDriver.getClass();
        this.referenceQueue = roomConnectionManager;
        this.values = sQLiteDriver;
    }

    public WeakCache(RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 27;
        this.values = anonymousClass1;
        Deflate.Config config = new Deflate.Config(1);
        config.good_length = 0;
        this.referenceQueue = config;
    }

    public WeakCache(Animation animation) {
        this.$r8$classId = 20;
        this.values = animation;
        this.referenceQueue = null;
    }

    public WeakCache(Animator animator) {
        this.$r8$classId = 20;
        this.values = null;
        AnimatorSet animatorSet = new AnimatorSet();
        this.referenceQueue = animatorSet;
        animatorSet.play(animator);
    }

    public WeakCache(WindowInsetsAnimation.Bounds bounds) {
        this.$r8$classId = 15;
        this.values = WindowInsetsAnimationCompat.Impl30.getLowerBounds(bounds);
        this.referenceQueue = WindowInsetsAnimationCompat.Impl30.getHigherBounds(bounds);
    }

    public WeakCache(EditText editText) {
        this.$r8$classId = 19;
        this.values = editText;
        EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText);
        this.referenceQueue = emojiTextWatcher;
        editText.addTextChangedListener(emojiTextWatcher);
        if (EmojiEditableFactory.sInstance == null) {
            synchronized (EmojiEditableFactory.INSTANCE_LOCK) {
                try {
                    if (EmojiEditableFactory.sInstance == null) {
                        EmojiEditableFactory emojiEditableFactory = new EmojiEditableFactory();
                        try {
                            EmojiEditableFactory.sWatcherClass = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        EmojiEditableFactory.sInstance = emojiEditableFactory;
                    }
                } finally {
                }
            }
        }
        editText.setEditableFactory(EmojiEditableFactory.sInstance);
    }

    public WeakCache(PreferenceGroupAdapter preferenceGroupAdapter, PreferenceGroup preferenceGroup) {
        this.$r8$classId = 24;
        this.referenceQueue = preferenceGroupAdapter;
        this.values = preferenceGroup;
    }
}
