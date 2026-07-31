package org.wikipedia.readinglist;

import j$.util.Collection;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;
import org.wikipedia.R;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.feed.HomeViewModel;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AddToReadingListDialog$updateLists$2 extends SuspendLambda implements Function2 {
    public AddToReadingListDialog L$0;
    public int label;
    public final /* synthetic */ AddToReadingListDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddToReadingListDialog$updateLists$2(AddToReadingListDialog addToReadingListDialog, Continuation continuation) {
        super(2, continuation);
        this.this$0 = addToReadingListDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddToReadingListDialog$updateLists$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddToReadingListDialog$updateLists$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AddToReadingListDialog addToReadingListDialog;
        AddToReadingListDialog addToReadingListDialog2 = this.this$0;
        ArrayList arrayList = addToReadingListDialog2.displayedLists;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
            HomeViewModel.AnonymousClass1 anonymousClass1 = new HomeViewModel.AnonymousClass1(2, 8, null);
            this.L$0 = addToReadingListDialog2;
            this.label = 1;
            obj = AwaitKt.withContext(defaultIoScheduler, anonymousClass1, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            addToReadingListDialog = addToReadingListDialog2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            addToReadingListDialog = this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        List list = (List) obj;
        addToReadingListDialog.getClass();
        list.getClass();
        addToReadingListDialog.readingLists = list;
        arrayList.clear();
        arrayList.addAll(addToReadingListDialog2.readingLists);
        if (!addToReadingListDialog2.showDefaultList && !arrayList.isEmpty()) {
            Collection.EL.removeIf(arrayList, new Element$$ExternalSyntheticLambda1(1, new TalkTopicsViewModel$$ExternalSyntheticLambda0(2)));
        }
        Prefs prefs = Prefs.INSTANCE;
        UriUtil.sort(arrayList, PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0));
        DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = addToReadingListDialog2.adapter;
        if (diffUtil$DiffLinesAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        diffUtil$DiffLinesAdapter.notifyDataSetChanged();
        if (arrayList.isEmpty()) {
            addToReadingListDialog2.showCreateListDialog();
        }
        return Unit.INSTANCE;
    }
}
