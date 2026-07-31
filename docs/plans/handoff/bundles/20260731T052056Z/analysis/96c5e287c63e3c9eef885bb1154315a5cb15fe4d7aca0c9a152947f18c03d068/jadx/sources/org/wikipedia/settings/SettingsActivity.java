package org.wikipedia.settings;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/settings/SettingsActivity;", "Lorg/wikipedia/settings/BaseSettingsActivity;", "Lorg/wikipedia/settings/SettingsFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SettingsActivity extends BaseSettingsActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final WikipediaApp app;
    public List initialFeedCardsEnabled;
    public Map initialFeedCardsLangDisabled;
    public List initialFeedCardsOrder;
    public String initialLanguageList;
    public final int title;

    public SettingsActivity() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
        this.title = R.string.settings_activity_title;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new SettingsFragment();
    }

    @Override // org.wikipedia.settings.BaseSettingsActivity, android.app.Activity
    public final int getTitle() {
        return this.title;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        String str;
        super.onActivityResult(i, i2, intent);
        JsonImpl jsonImpl = JsonUtil.json;
        List appLanguageCodes = this.app.getLanguageState().getAppLanguageCodes();
        try {
            JsonImpl jsonImpl2 = JsonUtil.json;
            jsonImpl2.getClass();
            str = jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), appLanguageCodes);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        if (i == 59) {
            String str2 = this.initialLanguageList;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("initialLanguageList");
                throw null;
            }
            if (!Intrinsics.areEqual(str, str2)) {
                setResult(1);
                return;
            }
        }
        if (i == 58) {
            Prefs prefs = Prefs.INSTANCE;
            List feedCardsEnabled = Prefs.getFeedCardsEnabled();
            List list = this.initialFeedCardsEnabled;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("initialFeedCardsEnabled");
                throw null;
            }
            if (feedCardsEnabled.equals(list)) {
                List feedCardsOrder = Prefs.getFeedCardsOrder();
                List list2 = this.initialFeedCardsOrder;
                if (list2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("initialFeedCardsOrder");
                    throw null;
                }
                if (feedCardsOrder.equals(list2)) {
                    List feedCardsOrder2 = Prefs.getFeedCardsOrder();
                    Map map = this.initialFeedCardsLangDisabled;
                    if (map == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("initialFeedCardsLangDisabled");
                        throw null;
                    }
                    if (feedCardsOrder2.equals(map)) {
                        return;
                    }
                }
            }
            setResult(2);
        }
    }

    @Override // org.wikipedia.settings.BaseSettingsActivity, org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        JsonImpl jsonImpl = JsonUtil.json;
        List appLanguageCodes = this.app.getLanguageState().getAppLanguageCodes();
        Object obj = null;
        try {
            JsonImpl jsonImpl2 = JsonUtil.json;
            jsonImpl2.getClass();
            str = jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), appLanguageCodes);
        } catch (Exception e) {
            L.w(e);
            str = null;
        }
        if (str == null) {
            str = "";
        }
        this.initialLanguageList = str;
        Prefs prefs = Prefs.INSTANCE;
        this.initialFeedCardsEnabled = Prefs.getFeedCardsEnabled();
        JsonImpl jsonImpl3 = JsonUtil.json;
        String string = PrefsIoUtil.getString(R.string.preference_key_feed_cards_lang_disabled, null);
        if (string != null && string.length() != 0) {
            try {
                JsonImpl jsonImpl4 = JsonUtil.json;
                jsonImpl4.getClass();
                obj = jsonImpl4.decodeFromString(string, UnsignedKt.getNullable(new HashMapSerializer(IntSerializer.INSTANCE, new HashSetSerializer(StringSerializer.INSTANCE, 1), 1)));
            } catch (Exception e2) {
                L.w(e2);
            }
        }
        Map map = (Map) obj;
        if (map == null) {
            map = EmptyMap.INSTANCE;
        }
        this.initialFeedCardsLangDisabled = map;
        Prefs prefs2 = Prefs.INSTANCE;
        this.initialFeedCardsOrder = Prefs.getFeedCardsOrder();
    }
}
