package androidx.room;

import android.os.Build;
import android.view.View;
import android.view.contentcapture.ContentCaptureSession;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusInvalidationManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.coreshims.ContentCaptureSessionCompat;
import androidx.paging.PageFetcher;
import androidx.paging.PageFetcher$LoadRequest$Refresh;
import androidx.paging.PageFetcher$RefreshType$All;
import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.internal.ContextScope;
import okio.FileMetadata;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.GeoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        NodeChain nodeChain;
        char c;
        char c2;
        ContentCaptureSession contentCaptureSession;
        int i = this.$r8$classId;
        char c3 = 7;
        int i2 = 0;
        Unit unit = Unit.INSTANCE;
        Object obj = this.receiver;
        switch (i) {
            case 0:
                RoomDatabase roomDatabase = (RoomDatabase) obj;
                ContextScope contextScope = roomDatabase.coroutineScope;
                if (contextScope == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    throw null;
                }
                AwaitKt.cancel(contextScope, (CancellationException) null);
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
                return unit;
            case 1:
                return Boolean.valueOf(((FocusableNode) obj).focusTargetNode.m368requestFocus3ESFkO8(7));
            case 2:
                return ((TextContextMenuDataProvider) obj).data();
            case 3:
                FocusInvalidationManager focusInvalidationManager = (FocusInvalidationManager) obj;
                MutableScatterSet mutableScatterSet = focusInvalidationManager.focusTargetNodes;
                MutableScatterSet mutableScatterSet2 = focusInvalidationManager.focusEventNodes;
                FocusOwnerImpl focusOwnerImpl = focusInvalidationManager.focusOwner;
                FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
                if (activeFocusTargetNode == null) {
                    Object[] objArr = mutableScatterSet2.elements;
                    long[] jArr = mutableScatterSet2.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j = jArr[i3];
                            if ((((~j) << c3) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                int i5 = i2;
                                while (i5 < i4) {
                                    if ((j & 255) < 128) {
                                        c2 = c3;
                                        ((FocusEventModifierNode) objArr[(i3 << 3) + i5]).onFocusEvent(FocusStateImpl.Inactive);
                                    } else {
                                        c2 = c3;
                                    }
                                    j >>= 8;
                                    i5++;
                                    c3 = c2;
                                }
                                c = c3;
                                if (i4 != 8) {
                                }
                            } else {
                                c = c3;
                            }
                            if (i3 != length) {
                                i3++;
                                c3 = c;
                                i2 = 0;
                            }
                        }
                    }
                } else if (activeFocusTargetNode.isAttached) {
                    if (mutableScatterSet.contains(activeFocusTargetNode)) {
                        activeFocusTargetNode.invalidateFocus$ui();
                    }
                    FocusStateImpl focusState = activeFocusTargetNode.getFocusState();
                    if (!activeFocusTargetNode.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node = activeFocusTargetNode.node;
                    LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
                    int i6 = 0;
                    while (requireLayoutNode != null) {
                        if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 5120) != 0) {
                            while (node != null) {
                                int i7 = node.kindSet;
                                if ((i7 & 5120) != 0) {
                                    if ((i7 & 1024) != 0) {
                                        i6++;
                                    }
                                    if ((node instanceof FocusEventModifierNode) && mutableScatterSet2.contains(node)) {
                                        if (i6 <= 1) {
                                            ((FocusEventModifierNode) node).onFocusEvent(focusState);
                                        } else {
                                            ((FocusEventModifierNode) node).onFocusEvent(FocusStateImpl.ActiveParent);
                                        }
                                        mutableScatterSet2.remove(node);
                                    }
                                }
                                node = node.parent;
                            }
                        }
                        requireLayoutNode = requireLayoutNode.getParent$ui();
                        node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                    }
                    Object[] objArr2 = mutableScatterSet2.elements;
                    long[] jArr2 = mutableScatterSet2.metadata;
                    int length2 = jArr2.length - 2;
                    if (length2 >= 0) {
                        int i8 = 0;
                        while (true) {
                            long j2 = jArr2[i8];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i9 = 8 - ((~(i8 - length2)) >>> 31);
                                for (int i10 = 0; i10 < i9; i10++) {
                                    if ((j2 & 255) < 128) {
                                        ((FocusEventModifierNode) objArr2[(i8 << 3) + i10]).onFocusEvent(FocusStateImpl.Inactive);
                                    }
                                    j2 >>= 8;
                                }
                                if (i9 != 8) {
                                }
                            }
                            if (i8 != length2) {
                                i8++;
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
            case 4:
                View view = (View) obj;
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 30) {
                    GeoUtil.setImportantForContentCapture(view);
                }
                if (i11 < 29 || (contentCaptureSession = FileUtil.getContentCaptureSession(view)) == null) {
                    return null;
                }
                return new ContentCaptureSessionCompat(contentCaptureSession, view);
            case 5:
                ((PageFetcher) obj).loadRequests.send(new PageFetcher$LoadRequest$Refresh(false, PageFetcher$RefreshType$All.INSTANCE$1));
                return unit;
            default:
                ((PageFetcher) obj).loadRequests.send(new PageFetcher$LoadRequest$Refresh(false, PageFetcher$RefreshType$All.INSTANCE$1));
                return unit;
        }
    }
}
