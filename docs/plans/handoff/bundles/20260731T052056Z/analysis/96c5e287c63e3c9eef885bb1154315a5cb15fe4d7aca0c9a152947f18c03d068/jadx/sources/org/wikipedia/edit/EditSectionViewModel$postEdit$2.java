package org.wikipedia.edit;

import android.content.Context;
import androidx.compose.runtime.Recomposer;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.glance.appwidget.RemoteViewsRoot;
import androidx.glance.session.TimeoutOptions;
import androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.createaccount.CreateAccountActivityViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionViewModel$postEdit$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $captchaId;
    public final /* synthetic */ Object $captchaWord;
    public final /* synthetic */ Object $editSectionText;
    public final /* synthetic */ Object $editTags;
    public final /* synthetic */ Object $isMinorEdit;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $summaryText;
    public final /* synthetic */ Object $watchThisPage;
    public int label;
    public /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSectionViewModel$postEdit$2(EditSectionViewModel editSectionViewModel, String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, Continuation continuation) {
        super(2, continuation);
        this.this$0 = editSectionViewModel;
        this.$summaryText = str;
        this.$editSectionText = str2;
        this.$captchaId = str3;
        this.$captchaWord = str4;
        this.$isMinorEdit = bool;
        this.$watchThisPage = str5;
        this.$editTags = str6;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$isMinorEdit;
        Object obj3 = this.$editTags;
        Object obj4 = this.$watchThisPage;
        Object obj5 = this.$captchaWord;
        Object obj6 = this.$captchaId;
        Object obj7 = this.$editSectionText;
        Object obj8 = this.$summaryText;
        switch (i) {
            case 0:
                return new EditSectionViewModel$postEdit$2((EditSectionViewModel) this.this$0, (String) obj8, (String) obj7, (String) obj6, (String) obj5, (Boolean) obj2, (String) obj4, (String) obj3, continuation);
            case 1:
                EditSectionViewModel$postEdit$2 editSectionViewModel$postEdit$2 = new EditSectionViewModel$postEdit$2((Recomposer) obj8, (AppWidgetSession) obj7, (StateFlowImpl) obj6, (Context) obj5, (RemoteViewsRoot) obj4, (TimerScopeKt$withTimer$2$1$blockScope$1) obj3, (TimeoutOptions) obj2, continuation);
                editSectionViewModel$postEdit$2.this$0 = obj;
                return editSectionViewModel$postEdit$2;
            default:
                return new EditSectionViewModel$postEdit$2((String) obj8, (String) obj7, (String) obj6, (String) obj5, (String) obj4, (String) obj3, (String) this.this$0, (CreateAccountActivityViewModel) obj2, continuation);
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
        return ((EditSectionViewModel$postEdit$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a9, code lost:
    
        if (r1 == r0) goto L69;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditSectionViewModel$postEdit$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSectionViewModel$postEdit$2(String str, String str2, String str3, String str4, String str5, String str6, String str7, CreateAccountActivityViewModel createAccountActivityViewModel, Continuation continuation) {
        super(2, continuation);
        this.$summaryText = str;
        this.$editSectionText = str2;
        this.$captchaId = str3;
        this.$captchaWord = str4;
        this.$watchThisPage = str5;
        this.$editTags = str6;
        this.this$0 = str7;
        this.$isMinorEdit = createAccountActivityViewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSectionViewModel$postEdit$2(Recomposer recomposer, AppWidgetSession appWidgetSession, StateFlowImpl stateFlowImpl, Context context, RemoteViewsRoot remoteViewsRoot, TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1, TimeoutOptions timeoutOptions, Continuation continuation) {
        super(2, continuation);
        this.$summaryText = recomposer;
        this.$editSectionText = appWidgetSession;
        this.$captchaId = stateFlowImpl;
        this.$captchaWord = context;
        this.$watchThisPage = remoteViewsRoot;
        this.$editTags = timerScopeKt$withTimer$2$1$blockScope$1;
        this.$isMinorEdit = timeoutOptions;
    }
}
