package org.jetbrains.compose.resources;

import androidx.camera.camera2.pipe.compat.AndroidCameraState;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.fsck.k9.activity.MessageHomeActivity$$ExternalSyntheticLambda5;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AsyncCache$getOrLoad$2 extends SuspendLambda implements Function2 {
    public Object $key;
    public final /* synthetic */ Object $load;
    public final /* synthetic */ int $r8$classId = 2;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(DrawerViewModel drawerViewModel, Continuation continuation, AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0, ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda5, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda52, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda53, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda54, Function0 function0) {
        super(2, continuation);
        this.L$1 = drawerViewModel;
        this.L$2 = abstractMap$$ExternalSyntheticLambda0;
        this.this$0 = composerKt$$ExternalSyntheticLambda0;
        this.L$3 = messageHomeActivity$$ExternalSyntheticLambda5;
        this.$key = messageHomeActivity$$ExternalSyntheticLambda52;
        this.L$4 = messageHomeActivity$$ExternalSyntheticLambda53;
        this.L$0 = messageHomeActivity$$ExternalSyntheticLambda54;
        this.$load = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$load;
        switch (i) {
            case 0:
                AsyncCache$getOrLoad$2 asyncCache$getOrLoad$2 = new AsyncCache$getOrLoad$2((SoftPool) this.this$0, (String) this.$key, (Function1) obj2, continuation);
                asyncCache$getOrLoad$2.L$0 = obj;
                return asyncCache$getOrLoad$2;
            case 1:
                AsyncCache$getOrLoad$2 asyncCache$getOrLoad$22 = new AsyncCache$getOrLoad$2((LockableDatabase) this.L$4, (String) this.L$3, (AndroidCameraState) obj2, continuation);
                asyncCache$getOrLoad$22.L$0 = obj;
                return asyncCache$getOrLoad$22;
            case 2:
                AsyncCache$getOrLoad$2 asyncCache$getOrLoad$23 = new AsyncCache$getOrLoad$2((PointerInputScope) this.L$1, (DraggableNode) this.L$2, (ThemeSizesKt$$ExternalSyntheticLambda0) this.this$0, (BufferedChannel$$ExternalSyntheticLambda1) this.L$3, (SegmentedButtonKt$$ExternalSyntheticLambda4) this.$key, (ResourceFileSystem$$ExternalSyntheticLambda0) this.L$4, (SettingListKt$$ExternalSyntheticLambda0) obj2, continuation);
                asyncCache$getOrLoad$23.L$0 = obj;
                return asyncCache$getOrLoad$23;
            case 3:
                AsyncCache$getOrLoad$2 asyncCache$getOrLoad$24 = new AsyncCache$getOrLoad$2((String) this.$key, (CreateArchiveFolder) this.L$4, (AccountId) obj2, continuation);
                asyncCache$getOrLoad$24.L$0 = obj;
                return asyncCache$getOrLoad$24;
            default:
                return new AsyncCache$getOrLoad$2((DrawerViewModel) this.L$1, continuation, (AbstractMap$$ExternalSyntheticLambda0) this.L$2, (ComposerKt$$ExternalSyntheticLambda0) this.this$0, (MessageHomeActivity$$ExternalSyntheticLambda5) this.L$3, (MessageHomeActivity$$ExternalSyntheticLambda5) this.$key, (MessageHomeActivity$$ExternalSyntheticLambda5) this.L$4, (MessageHomeActivity$$ExternalSyntheticLambda5) this.L$0, (Function0) obj2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((AsyncCache$getOrLoad$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((AsyncCache$getOrLoad$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((AsyncCache$getOrLoad$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((AsyncCache$getOrLoad$2) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((AsyncCache$getOrLoad$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return CoroutineSingletons.COROUTINE_SUSPENDED;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0127, code lost:
    
        if (r1 == r10) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0463, code lost:
    
        if (r4 == r10) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x052e, code lost:
    
        if (r9 != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0518, code lost:
    
        if (r7.lock(r29) == r10) goto L189;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03b4 A[Catch: all -> 0x034b, TRY_ENTER, TryCatch #3 {all -> 0x034b, blocks: (B:138:0x033d, B:140:0x0463, B:144:0x03b4, B:146:0x03c3, B:147:0x03d0, B:149:0x03d6, B:150:0x03e3, B:153:0x03eb, B:154:0x0413, B:156:0x0419, B:157:0x0444, B:159:0x0457, B:163:0x045c, B:168:0x0467, B:170:0x0481, B:171:0x0486, B:173:0x048c, B:174:0x0491, B:176:0x0497, B:177:0x049a, B:179:0x04a0), top: B:137:0x033d }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0467 A[Catch: all -> 0x034b, TryCatch #3 {all -> 0x034b, blocks: (B:138:0x033d, B:140:0x0463, B:144:0x03b4, B:146:0x03c3, B:147:0x03d0, B:149:0x03d6, B:150:0x03e3, B:153:0x03eb, B:154:0x0413, B:156:0x0419, B:157:0x0444, B:159:0x0457, B:163:0x045c, B:168:0x0467, B:170:0x0481, B:171:0x0486, B:173:0x048c, B:174:0x0491, B:176:0x0497, B:177:0x049a, B:179:0x04a0), top: B:137:0x033d }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0213 A[Catch: MessagingException -> 0x0087, TryCatch #0 {MessagingException -> 0x0087, blocks: (B:19:0x0082, B:22:0x0096, B:24:0x020d, B:26:0x0213, B:32:0x023a, B:34:0x023e, B:38:0x025c, B:48:0x0277, B:49:0x027c, B:51:0x00ac, B:53:0x01f4, B:58:0x00c2, B:59:0x01d6, B:63:0x00d3, B:64:0x01ad, B:69:0x00e0, B:71:0x0170, B:73:0x0174, B:77:0x0190, B:91:0x0151), top: B:14:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x023a A[Catch: MessagingException -> 0x0087, TryCatch #0 {MessagingException -> 0x0087, blocks: (B:19:0x0082, B:22:0x0096, B:24:0x020d, B:26:0x0213, B:32:0x023a, B:34:0x023e, B:38:0x025c, B:48:0x0277, B:49:0x027c, B:51:0x00ac, B:53:0x01f4, B:58:0x00c2, B:59:0x01d6, B:63:0x00d3, B:64:0x01ad, B:69:0x00e0, B:71:0x0170, B:73:0x0174, B:77:0x0190, B:91:0x0151), top: B:14:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0174 A[Catch: MessagingException -> 0x0087, TryCatch #0 {MessagingException -> 0x0087, blocks: (B:19:0x0082, B:22:0x0096, B:24:0x020d, B:26:0x0213, B:32:0x023a, B:34:0x023e, B:38:0x025c, B:48:0x0277, B:49:0x027c, B:51:0x00ac, B:53:0x01f4, B:58:0x00c2, B:59:0x01d6, B:63:0x00d3, B:64:0x01ad, B:69:0x00e0, B:71:0x0170, B:73:0x0174, B:77:0x0190, B:91:0x0151), top: B:14:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0190 A[Catch: MessagingException -> 0x0087, TryCatch #0 {MessagingException -> 0x0087, blocks: (B:19:0x0082, B:22:0x0096, B:24:0x020d, B:26:0x0213, B:32:0x023a, B:34:0x023e, B:38:0x025c, B:48:0x0277, B:49:0x027c, B:51:0x00ac, B:53:0x01f4, B:58:0x00c2, B:59:0x01d6, B:63:0x00d3, B:64:0x01ad, B:69:0x00e0, B:71:0x0170, B:73:0x0174, B:77:0x0190, B:91:0x0151), top: B:14:0x0071 }] */
    /* JADX WARN: Type inference failed for: r0v24, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r13v2, types: [androidx.camera.camera2.pipe.compat.AndroidCameraState, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.util.concurrent.CancellationException] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v12, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r3v6, types: [kotlinx.coroutines.JobSupport] */
    /* JADX WARN: Type inference failed for: r5v7, types: [kotlinx.coroutines.JobSupport] */
    /* JADX WARN: Type inference failed for: r8v7, types: [kotlinx.coroutines.Deferred] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 1418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.compose.resources.AsyncCache$getOrLoad$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(LockableDatabase lockableDatabase, String str, AndroidCameraState androidCameraState, Continuation continuation) {
        super(2, continuation);
        this.L$4 = lockableDatabase;
        this.L$3 = str;
        this.$load = androidCameraState;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(String str, CreateArchiveFolder createArchiveFolder, AccountId accountId, Continuation continuation) {
        super(2, continuation);
        this.$key = str;
        this.L$4 = createArchiveFolder;
        this.$load = accountId;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(PointerInputScope pointerInputScope, DraggableNode draggableNode, ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda0, BufferedChannel$$ExternalSyntheticLambda1 bufferedChannel$$ExternalSyntheticLambda1, SegmentedButtonKt$$ExternalSyntheticLambda4 segmentedButtonKt$$ExternalSyntheticLambda4, ResourceFileSystem$$ExternalSyntheticLambda0 resourceFileSystem$$ExternalSyntheticLambda0, SettingListKt$$ExternalSyntheticLambda0 settingListKt$$ExternalSyntheticLambda0, Continuation continuation) {
        super(2, continuation);
        this.L$1 = pointerInputScope;
        this.L$2 = draggableNode;
        this.this$0 = themeSizesKt$$ExternalSyntheticLambda0;
        this.L$3 = bufferedChannel$$ExternalSyntheticLambda1;
        this.$key = segmentedButtonKt$$ExternalSyntheticLambda4;
        this.L$4 = resourceFileSystem$$ExternalSyntheticLambda0;
        this.$load = settingListKt$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(SoftPool softPool, String str, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = softPool;
        this.$key = str;
        this.$load = function1;
    }
}
