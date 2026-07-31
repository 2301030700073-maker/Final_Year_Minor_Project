package org.wikipedia.settings.dev;

import android.R;
import android.content.DialogInterface;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.preference.PreferenceFragmentCompat;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda0;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.suggestededits.provider.EditingSuggestionsProvider;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.talk.db.TalkPageSeenDao_Impl;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeveloperSettingsPreferenceLoader$loadPreferences$7$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DeveloperSettingsPreferenceLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DeveloperSettingsPreferenceLoader$loadPreferences$7$2(DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = developerSettingsPreferenceLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = this.this$0;
        switch (i) {
            case 0:
                return new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, 0);
            case 1:
                return new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, 1);
            default:
                return new DeveloperSettingsPreferenceLoader$loadPreferences$7$2(developerSettingsPreferenceLoader, continuation, 2);
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
        return ((DeveloperSettingsPreferenceLoader$loadPreferences$7$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object nextArticleWithMissingDescription;
        Object nextArticleWithMissingDescription2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    EditingSuggestionsProvider editingSuggestionsProvider = EditingSuggestionsProvider.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    WikiSite wikiSite = Jsoup.getInstance().getWikiSite();
                    this.label = 1;
                    nextArticleWithMissingDescription = editingSuggestionsProvider.getNextArticleWithMissingDescription(wikiSite, 20L, this);
                    if (nextArticleWithMissingDescription == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    nextArticleWithMissingDescription = obj;
                }
                PageSummary pageSummary = (PageSummary) nextArticleWithMissingDescription;
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                StringUtil stringUtil = StringUtil.INSTANCE;
                alertParams.mTitle = StringUtil.fromHtml(pageSummary.getDisplayTitle());
                alertParams.mMessage = StringUtil.fromHtml(pageSummary.extract);
                materialAlertDialogBuilder.setPositiveButton("Go", (DialogInterface.OnClickListener) new BaseActivity$$ExternalSyntheticLambda0(2, pageSummary, developerSettingsPreferenceLoader));
                materialAlertDialogBuilder.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder.show();
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                    TalkPageSeenDao_Impl talkPageSeenDao = Cookie.Companion.getInstance().talkPageSeenDao();
                    this.label = 1;
                    Object performSuspending = ExceptionsKt.performSuspending(talkPageSeenDao.__db, false, true, new TalkTopicsViewModel$$ExternalSyntheticLambda0(28), this);
                    if (performSuspending != coroutineSingletons2) {
                        performSuspending = unit;
                    }
                    if (performSuspending == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Toast.makeText(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), "Reset complete.", 0).show();
                break;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    EditingSuggestionsProvider editingSuggestionsProvider2 = EditingSuggestionsProvider.INSTANCE;
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    WikiSite wikiSite2 = Jsoup.getInstance().getWikiSite();
                    String str = (String) ((ArrayList) ViewSizeResolver$CC.m785m()).get(1);
                    this.label = 1;
                    nextArticleWithMissingDescription2 = editingSuggestionsProvider2.getNextArticleWithMissingDescription(wikiSite2, str, 20L, this);
                    if (nextArticleWithMissingDescription2 == coroutineSingletons3) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    nextArticleWithMissingDescription2 = obj;
                }
                Pair pair = (Pair) nextArticleWithMissingDescription2;
                MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                AlertController.AlertParams alertParams2 = (AlertController.AlertParams) materialAlertDialogBuilder2.array;
                StringUtil stringUtil2 = StringUtil.INSTANCE;
                alertParams2.mTitle = StringUtil.fromHtml(((PageSummary) pair.second).getDisplayTitle());
                alertParams2.mMessage = StringUtil.fromHtml(((PageSummary) pair.second).extract);
                materialAlertDialogBuilder2.setPositiveButton("Go", (DialogInterface.OnClickListener) new BaseActivity$$ExternalSyntheticLambda0(3, pair, developerSettingsPreferenceLoader));
                materialAlertDialogBuilder2.setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder2.show();
                break;
        }
        return unit;
    }
}
