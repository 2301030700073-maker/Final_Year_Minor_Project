package com.fsck.k9.mail.oauth;

import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.filter.Base64;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.Moshi;
import java.io.IOException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class XOAuth2ChallengeParser {
    public static boolean shouldRetry(String str, String str2) {
        String str3;
        String decode = Base64.decode(str);
        if (K9MailLib.debugStatus.enabled()) {
            Log.v("Challenge response: %s", decode);
        }
        try {
            XOAuth2Response xOAuth2Response = (XOAuth2Response) new Moshi(new Headers.Builder(8)).adapter(XOAuth2Response.class).fromJson(decode);
            if (xOAuth2Response != null && (str3 = xOAuth2Response.status) != null) {
                if (!"400".equals(str3)) {
                    return false;
                }
            }
        } catch (JsonDataException | IOException e) {
            Log.e(e, "Error decoding JSON response from: %s. Response was: %s", str2, decode);
        }
        return true;
    }
}
