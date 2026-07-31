package expo.modules.updates.manifest;

import android.content.Context;
import expo.modules.updates.UpdatesConfiguration;
import io.sentry.android.core.SentryLogcatAdapter;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* compiled from: EmbeddedManifestUtils.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lexpo/modules/updates/manifest/EmbeddedManifestUtils;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "MANIFEST_FILENAME", "sEmbeddedUpdate", "Lexpo/modules/updates/manifest/EmbeddedUpdate;", "getEmbeddedUpdate", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class EmbeddedManifestUtils {
    private static final String MANIFEST_FILENAME = "app.manifest";
    private static EmbeddedUpdate sEmbeddedUpdate;
    public static final EmbeddedManifestUtils INSTANCE = new EmbeddedManifestUtils();
    private static final String TAG = "EmbeddedManifestUtils";

    private EmbeddedManifestUtils() {
    }

    public final EmbeddedUpdate getEmbeddedUpdate(Context context, UpdatesConfiguration configuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        if (!configuration.getHasEmbeddedUpdate()) {
            return null;
        }
        if (sEmbeddedUpdate == null) {
            try {
                BufferedReader open = context.getAssets().open(MANIFEST_FILENAME);
                try {
                    InputStream inputStream = open;
                    Intrinsics.checkNotNull(inputStream);
                    Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                    open = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                    try {
                        String readText = TextStreamsKt.readText(open);
                        CloseableKt.closeFinally(open, null);
                        JSONObject jSONObject = new JSONObject(readText);
                        jSONObject.put("isVerified", true);
                        sEmbeddedUpdate = UpdateFactory.INSTANCE.getEmbeddedUpdate(jSONObject, configuration);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(open, null);
                    } finally {
                    }
                } finally {
                }
            } catch (Exception e) {
                Exception exc = e;
                SentryLogcatAdapter.e(TAG, "Could not read embedded manifest", exc);
                throw new AssertionError("The embedded manifest is invalid or could not be read. Make sure you have configured expo-updates correctly in android/app/build.gradle.", exc);
            }
        }
        EmbeddedUpdate embeddedUpdate = sEmbeddedUpdate;
        Intrinsics.checkNotNull(embeddedUpdate);
        return embeddedUpdate;
    }
}
