package org.wikipedia.language.addlanguages;

import android.content.Intent;
import android.os.Build;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AddLanguagesListActivity$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AddLanguagesListActivity f$0;

    public /* synthetic */ AddLanguagesListActivity$$ExternalSyntheticLambda0(AddLanguagesListActivity addLanguagesListActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = addLanguagesListActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        AddLanguagesListActivity addLanguagesListActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = AddLanguagesListActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                Window window = addLanguagesListActivity.getWindow();
                window.getClass();
                HintHandler hintHandler = new HintHandler(window.getDecorView());
                int i3 = Build.VERSION.SDK_INT;
                (i3 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i3 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i3 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                Intent intent = new Intent();
                intent.putExtra("language_searched", addLanguagesListActivity.isLanguageSearched);
                addLanguagesListActivity.setResult(-1, intent);
                addLanguagesListActivity.finish();
                break;
            case 1:
                String str = (String) obj;
                int i4 = AddLanguagesListActivity.$r8$clinit;
                str.getClass();
                AddLanguagesViewModel addLanguagesViewModel = (AddLanguagesViewModel) addLanguagesListActivity.viewModel$delegate.getValue();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(addLanguagesViewModel), addLanguagesViewModel.handler, null, new DonateDialog$onCreateView$3.AnonymousClass1(addLanguagesViewModel, str, null, 18), 2);
                break;
            case 2:
                String str2 = (String) obj;
                int i5 = AddLanguagesListActivity.$r8$clinit;
                str2.getClass();
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                WikipediaApp jsoup = Jsoup.getInstance();
                if (!str2.equals(jsoup.getAppOrSystemLanguageCode())) {
                    jsoup.getLanguageState().addAppLanguageCode(str2);
                }
                Intent intent2 = new Intent();
                intent2.putExtra("add_language_interactions", 1);
                intent2.putExtra("language_searched", addLanguagesListActivity.isLanguageSearched);
                addLanguagesListActivity.setResult(-1, intent2);
                addLanguagesListActivity.finish();
                break;
            default:
                addLanguagesListActivity.isLanguageSearched = ((Boolean) obj).booleanValue();
                break;
        }
        return unit;
    }
}
