package androidx.room;

import android.os.Build;
import android.view.View;
import android.view.contentcapture.ContentCaptureSession;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusInvalidationManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.pointer.PointerInputResetException;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.core.os.BuildCompat;
import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import coil3.decode.StaticImageDecoderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import net.newpipe.app.ComposeActivity;
import okio.FileMetadata;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.SubscriptionViewModel;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RoomDatabase$closeBarrier$1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Unit unit;
        NodeChain nodeChain;
        ContentCaptureSession contentCaptureSession;
        int i = this.$r8$classId;
        Throwable th = null;
        Unit unit2 = Unit.INSTANCE;
        switch (i) {
            case 0:
                RoomDatabase roomDatabase = (RoomDatabase) this.receiver;
                ContextScope contextScope = roomDatabase.coroutineScope;
                if (contextScope == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    throw null;
                }
                JobKt.cancel(contextScope, (PointerInputResetException) null);
                roomDatabase.getInvalidationTracker();
                FileMetadata fileMetadata = roomDatabase.connectionManager;
                if (fileMetadata == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
                    throw null;
                }
                ((ConnectionPool) fileMetadata.lastModifiedAtMillis).close();
                SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) fileMetadata.lastAccessedAtMillis;
                if (supportSQLiteOpenHelper != null) {
                    supportSQLiteOpenHelper.close();
                }
                return unit2;
            case 1:
                return Boolean.valueOf(((FocusableNode) this.receiver).focusTargetNode.m193requestFocus3ESFkO8(7));
            case 2:
                FocusInvalidationManager focusInvalidationManager = (FocusInvalidationManager) this.receiver;
                MutableScatterSet mutableScatterSet = focusInvalidationManager.focusTargetNodes;
                MutableScatterSet mutableScatterSet2 = focusInvalidationManager.focusEventNodes;
                FocusOwnerImpl focusOwnerImpl = focusInvalidationManager.focusOwner;
                FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                if (activeFocusTargetNode == null) {
                    Object[] objArr = mutableScatterSet2.elements;
                    long[] jArr = mutableScatterSet2.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j = jArr[i2];
                            Throwable th2 = th;
                            unit = unit2;
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((j & 255) < 128) {
                                        ((BackwardsCompatNode) objArr[(i2 << 3) + i4]).onFocusEvent();
                                        throw th2;
                                    }
                                    j >>= 8;
                                }
                                if (i3 != 8) {
                                }
                            }
                            if (i2 != length) {
                                i2++;
                                unit2 = unit;
                                th = th2;
                            }
                        }
                    } else {
                        unit = unit2;
                    }
                } else {
                    unit = unit2;
                    if (activeFocusTargetNode.isAttached) {
                        if (mutableScatterSet.contains(activeFocusTargetNode)) {
                            activeFocusTargetNode.invalidateFocus$ui();
                        }
                        activeFocusTargetNode.getFocusState();
                        if (!activeFocusTargetNode.node.isAttached) {
                            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node = activeFocusTargetNode.node;
                        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
                        int i5 = 0;
                        while (requireLayoutNode != null) {
                            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 5120) != 0) {
                                while (node != null) {
                                    int i6 = node.kindSet;
                                    if ((i6 & 5120) != 0) {
                                        if ((i6 & 1024) != 0) {
                                            i5++;
                                        }
                                        if ((node instanceof BackwardsCompatNode) && mutableScatterSet2.contains(node)) {
                                            if (i5 <= 1) {
                                                ((BackwardsCompatNode) node).onFocusEvent();
                                                throw null;
                                            }
                                            ((BackwardsCompatNode) node).onFocusEvent();
                                            throw null;
                                        }
                                    }
                                    node = node.parent;
                                }
                            }
                            requireLayoutNode = requireLayoutNode.getParent$ui();
                            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
                        }
                        Object[] objArr2 = mutableScatterSet2.elements;
                        long[] jArr2 = mutableScatterSet2.metadata;
                        int length2 = jArr2.length - 2;
                        if (length2 >= 0) {
                            int i7 = 0;
                            while (true) {
                                long j2 = jArr2[i7];
                                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i8 = 8 - ((~(i7 - length2)) >>> 31);
                                    for (int i9 = 0; i9 < i8; i9++) {
                                        if ((j2 & 255) < 128) {
                                            ((BackwardsCompatNode) objArr2[(i7 << 3) + i9]).onFocusEvent();
                                            throw null;
                                        }
                                        j2 >>= 8;
                                    }
                                    if (i8 != 8) {
                                    }
                                }
                                if (i7 != length2) {
                                    i7++;
                                }
                            }
                        }
                    }
                }
                if (focusOwnerImpl.getActiveFocusTargetNode() == null || focusOwnerImpl.rootFocusNode.getFocusState() == FocusStateImpl.Inactive) {
                    focusOwnerImpl.clearOwnerFocus();
                }
                mutableScatterSet.clear();
                mutableScatterSet2.clear();
                focusInvalidationManager.isInvalidationScheduled = false;
                return unit;
            case 3:
                View view = (View) this.receiver;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 30) {
                    BuildCompat.Api30Impl.setImportantForContentCapture(view);
                }
                if (i10 < 29 || (contentCaptureSession = StaticImageDecoderKt.getContentCaptureSession(view)) == null) {
                    return null;
                }
                return new ContentCaptureSessionCompat(contentCaptureSession, view);
            case 4:
                ((ComposeActivity) this.receiver).finish();
                return unit2;
            case 5:
                SubscriptionFragment subscriptionFragment = (SubscriptionFragment) this.receiver;
                SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                subscriptionFragment.getClass();
                new FeedGroupReorderDialog().show(subscriptionFragment.getParentFragmentManager(), null);
                return unit2;
            default:
                SubscriptionViewModel subscriptionViewModel = ((SubscriptionFragment) this.receiver).viewModel;
                if (subscriptionViewModel != null) {
                    subscriptionViewModel.listViewMode.onNext(Boolean.valueOf(!subscriptionViewModel.getListViewMode()));
                    return unit2;
                }
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                throw null;
        }
    }
}
