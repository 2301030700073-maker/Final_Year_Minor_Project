package retrofit2;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import java.util.NoSuchElementException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.yearinreview.YearInReviewSurveyState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Utils$$ExternalSyntheticBUOutline0 implements OnApplyWindowInsetsListener, Preference.OnPreferenceChangeListener, Preference.OnPreferenceClickListener, NestedScrollView.OnScrollChangeListener {
    public final /* synthetic */ int $r8$classId;

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        view.getClass();
        Insets insets = windowInsetsCompat.mImpl.getInsets(519);
        insets.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = insets.bottom;
        view.setLayoutParams(marginLayoutParams);
        return windowInsetsCompat;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        switch (this.$r8$classId) {
            case 3:
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Jsoup.getInstance().resetWikiSite();
                break;
            case 4:
                obj.getClass();
                String str = (String) obj;
                YearInReviewSurveyState yearInReviewSurveyState = str.equals("NOT_TRIGGERED") ? YearInReviewSurveyState.NOT_TRIGGERED : str.equals("SHOULD_SHOW") ? YearInReviewSurveyState.SHOULD_SHOW : YearInReviewSurveyState.SHOWN;
                Prefs prefs = Prefs.INSTANCE;
                Prefs.setYearInReviewSurveyState(yearInReviewSurveyState);
                break;
            case 5:
                obj.getClass();
                String str2 = (String) obj;
                HomePreferenceType homePreferenceType = str2.equals("COMMUNITY") ? HomePreferenceType.COMMUNITY : str2.equals("PERSONALIZED") ? HomePreferenceType.PERSONALIZED : HomePreferenceType.COMMUNITY;
                Prefs prefs2 = Prefs.INSTANCE;
                homePreferenceType.getClass();
                PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType.name());
                break;
            case 6:
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                Jsoup.getInstance().resetWikiSite();
                break;
        }
        return true;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        throw new coil3.network.HttpException("User tested crash functionality.");
    }

    public static /* synthetic */ void m(String str, float f, Object obj) {
        throw new IllegalArgumentException(str + f + obj);
    }

    public static /* synthetic */ void m() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }
}
