package org.wikipedia.settings;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function0;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/settings/LicenseActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LicenseActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    public final void LicenseScreen(Modifier modifier, String str, String str2, Function0 function0, GapComposer gapComposer, int i) {
        function0.getClass();
        gapComposer.startRestartGroup(-316044944);
        int i2 = i | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(str2) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            CardKt.m270ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(1623165996, new LicenseActivity$$ExternalSyntheticLambda3(0, str, function0), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-314038271, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(17, modifier, str2), gapComposer), gapComposer, 805306416, 445);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(this, modifier, str, str2, function0, i);
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("asset");
        if (stringExtra == null) {
            stringExtra = "";
        }
        InputStream open = getAssets().open(stringExtra);
        open.getClass();
        InputStreamReader inputStreamReader = new InputStreamReader(open, Charsets.UTF_8);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader, 8192);
        try {
            int i = 0;
            Iterator it = new ConstrainedOnceSequence(new LinesSequence(0, bufferedReader)).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                str.getClass();
                arrayList.add(str);
            }
            bufferedReader.close();
            String replace$default = StringsKt__StringsJVMKt.replace$default(CollectionsKt.joinToString$default(arrayList, "\n", null, null, null, 62), "\n\n", "<br/><br/>");
            List split$default = StringsKt.split$default(stringExtra, new String[]{"/"});
            String string = getString(R.string.license_title, StringsKt.trim((String) split$default.get(split$default.size() - 1)).toString());
            string.getClass();
            ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new LicenseActivity$$ExternalSyntheticLambda0(this, string, replace$default, i), true, 308038186));
        } finally {
        }
    }
}
