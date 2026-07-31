package org.wikipedia.settings;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import androidx.room.Room;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.Metadata;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.compose.components.LinkTextData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/settings/AboutActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AboutActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final List credits = Room.listOf((Object[]) new LinkTextData[]{new LinkTextData(4, "Balloon", "https://github.com/skydoves/Balloon/blob/main/LICENSE/", null), new LinkTextData(2, "(license),", null, "licenses/Balloon"), new LinkTextData(4, "Commons Lang", "https://www.apache.org/licenses/", null), new LinkTextData(2, "(license),", null, "licenses/CommonsLang3"), new LinkTextData(4, "jsoup", "https://github.com/jhy/jsoup", null), new LinkTextData(2, "(license),", null, "licenses/jsoup"), new LinkTextData(4, "OkHttp", "https://square.github.io/okhttp/", null), new LinkTextData(2, "(license),", null, "licenses/OkHttp"), new LinkTextData(4, "Retrofit", "https://square.github.io/retrofit/", null), new LinkTextData(2, "(license)", null, "licenses/Retrofit")});

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdge.enable$default(this);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!Jsoup.getInstance().currentTheme.isDark());
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new AboutActivity$$ExternalSyntheticLambda0(this, 0), true, -925066862));
    }
}
