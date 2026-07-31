package net.newpipe.app.platform;

import android.content.Context;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.math.MathKt;
import kotlin.text.Charsets;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidResourceHandler implements ResourceHandler {
    public final Context context;

    public AndroidResourceHandler(Context context) {
        this.context = context;
    }

    public final String readResourceToString() {
        InputStream open = this.context.getAssets().open("aboutlibraries.json");
        try {
            open.getClass();
            String readText = MathKt.readText(new BufferedReader(new InputStreamReader(open, Charsets.UTF_8), 8192));
            open.close();
            return readText;
        } finally {
        }
    }
}
