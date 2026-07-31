package org.wikipedia.readinglist;

import androidx.compose.animation.SizeAnimationModifierNode;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationEndReason;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.IntSize;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.Service;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MoveToReadingListDialog$onCreateView$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ long $sourceReadingListId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoveToReadingListDialog$onCreateView$2(SizeAnimationModifierNode.AnimData animData, long j, SizeAnimationModifierNode sizeAnimationModifierNode, Continuation continuation) {
        super(2, continuation);
        this.L$0 = animData;
        this.$sourceReadingListId = j;
        this.this$0 = sizeAnimationModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new MoveToReadingListDialog$onCreateView$2((MoveToReadingListDialog) obj2, this.$sourceReadingListId, continuation);
            default:
                return new MoveToReadingListDialog$onCreateView$2((SizeAnimationModifierNode.AnimData) this.L$0, this.$sourceReadingListId, (SizeAnimationModifierNode) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((MoveToReadingListDialog$onCreateView$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object listById$suspendImpl;
        MoveToReadingListDialog moveToReadingListDialog;
        Object animateTo$default;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.$sourceReadingListId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                MoveToReadingListDialog moveToReadingListDialog2 = (MoveToReadingListDialog) obj2;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                    ReadingListDao_Impl readingListDao = Cookie.Companion.getInstance().readingListDao();
                    this.L$0 = moveToReadingListDialog2;
                    this.label = 1;
                    readingListDao.getClass();
                    listById$suspendImpl = Service.CC.getListById$suspendImpl(readingListDao, j, false, this);
                    if (listById$suspendImpl == coroutineSingletons) {
                        break;
                    } else {
                        moveToReadingListDialog = moveToReadingListDialog2;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    moveToReadingListDialog = (MoveToReadingListDialog) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    listById$suspendImpl = obj;
                }
                moveToReadingListDialog.sourceReadingList = (ReadingList) listById$suspendImpl;
                if (moveToReadingListDialog2.sourceReadingList == null) {
                    moveToReadingListDialog2.dismiss();
                    break;
                }
                break;
            default:
                SizeAnimationModifierNode sizeAnimationModifierNode = (SizeAnimationModifierNode) obj2;
                SizeAnimationModifierNode.AnimData animData = (SizeAnimationModifierNode.AnimData) this.L$0;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = animData.anim;
                    IntSize intSize = new IntSize(j);
                    SpringSpec springSpec = sizeAnimationModifierNode.animationSpec;
                    this.label = 1;
                    animateTo$default = Animatable.animateTo$default(animatable, intSize, springSpec, null, this, 12);
                    if (animateTo$default == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    animateTo$default = obj;
                }
                AnimationEndReason animationEndReason = ((AnimationResult) animateTo$default).endReason;
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoveToReadingListDialog$onCreateView$2(MoveToReadingListDialog moveToReadingListDialog, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = moveToReadingListDialog;
        this.$sourceReadingListId = j;
    }
}
