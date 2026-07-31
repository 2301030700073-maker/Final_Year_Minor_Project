package org.wikipedia.edit.summaries;

import android.R;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import java.util.Date;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.edit.db.EditSummary;
import org.wikipedia.edit.db.EditSummaryDao_Impl;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSummaryHandler$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ MultipartBody.Builder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EditSummaryHandler$2(MultipartBody.Builder builder, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = builder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        MultipartBody.Builder builder = this.this$0;
        switch (i) {
            case 0:
                return new EditSummaryHandler$2(builder, continuation, 0);
            default:
                return new EditSummaryHandler$2(builder, continuation, 1);
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
        return ((EditSummaryHandler$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        MultipartBody.Builder builder = this.this$0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                    EditSummaryDao_Impl editSummaryDao = Cookie.Companion.getInstance().editSummaryDao();
                    this.label = 1;
                    obj = ExceptionsKt.performSuspending(editSummaryDao.__db, true, false, new ForYouCardKt$$ExternalSyntheticLambda1(5, editSummaryDao), this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ((AutoCompleteTextView) builder.parts).setAdapter(new ArrayAdapter(((View) builder.type).getContext(), R.layout.simple_list_item_1, (List) obj));
                return unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$12 = AppDatabase.MIGRATION_19_20;
                    EditSummaryDao_Impl editSummaryDao2 = Cookie.Companion.getInstance().editSummaryDao();
                    EditSummary editSummary = new EditSummary(((AutoCompleteTextView) builder.parts).getText().toString(), new Date());
                    this.label = 1;
                    Object performSuspending = ExceptionsKt.performSuspending(editSummaryDao2.__db, false, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(14, editSummaryDao2, editSummary), this);
                    if (performSuspending != coroutineSingletons2) {
                        performSuspending = unit;
                    }
                    if (performSuspending == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return unit;
        }
    }
}
