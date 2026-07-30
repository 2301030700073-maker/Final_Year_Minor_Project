package org.fdroid.fdroid.views.appdetails;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.fdroid.database.FDroidDatabase;
import org.fdroid.database.Repository;
import org.fdroid.index.RepoManager;

/* compiled from: AppDetailsViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.views.appdetails.AppDetailsViewModel$loadRepos$2", f = "AppDetailsViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class AppDetailsViewModel$loadRepos$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ AppDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppDetailsViewModel$loadRepos$2(AppDetailsViewModel appDetailsViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = appDetailsViewModel;
        this.$packageName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppDetailsViewModel$loadRepos$2(this.this$0, this.$packageName, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((AppDetailsViewModel$loadRepos$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FDroidDatabase fDroidDatabase;
        RepoManager repoManager;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        AppDetailsViewModel appDetailsViewModel = this.this$0;
        fDroidDatabase = appDetailsViewModel.db;
        List<Long> repositoryIdsForApp = fDroidDatabase.getAppDao().getRepositoryIdsForApp(this.$packageName);
        AppDetailsViewModel appDetailsViewModel2 = this.this$0;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = repositoryIdsForApp.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            repoManager = appDetailsViewModel2.repoManager;
            Repository repository = repoManager.getRepository(longValue);
            if (repository != null) {
                arrayList.add(repository);
            }
        }
        appDetailsViewModel.repos = arrayList;
        this.this$0.tryToPublishAppData();
        return Unit.INSTANCE;
    }
}
