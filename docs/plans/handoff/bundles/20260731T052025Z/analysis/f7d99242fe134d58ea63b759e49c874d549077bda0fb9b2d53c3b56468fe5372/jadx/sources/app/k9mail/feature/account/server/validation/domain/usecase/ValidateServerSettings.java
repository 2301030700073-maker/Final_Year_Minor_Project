package app.k9mail.feature.account.server.validation.domain.usecase;

import androidx.work.Configuration;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.google.zxing.BinaryBitmap;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateServerSettings {
    public final AuthStateStorage authStateStorage;
    public final CoroutineDispatcher coroutineDispatcher;
    public final Dispatcher imapValidator;
    public final Configuration.Builder pop3Validator;
    public final BinaryBitmap smtpValidator;

    public ValidateServerSettings(AuthStateStorage authStateStorage, Dispatcher dispatcher, Configuration.Builder builder, BinaryBitmap binaryBitmap) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.authStateStorage = authStateStorage;
        this.imapValidator = dispatcher;
        this.pop3Validator = builder;
        this.smtpValidator = binaryBitmap;
        this.coroutineDispatcher = defaultIoScheduler;
    }
}
