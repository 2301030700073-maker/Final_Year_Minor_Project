package org.slf4j.event;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.SwitchPreference;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.account.AccountSettingsDataStore;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.fsck.k9.ui.settings.account.OpenPgpAppSelectDialog;
import com.takisoft.datetimepicker.widget.CalendarView;
import com.takisoft.datetimepicker.widget.DayPickerView;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Queue;
import javax.net.ssl.SSLException;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.time.Clock;
import kotlin.time.Duration;
import kotlin.time.Instant;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter$$ExternalSyntheticLambda1;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.internal.DefaultSocket$SocketSink;
import okio.internal.DefaultSocket$SocketSource;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;
import org.openintents.openpgp.util.OpenPgpProviderUtil;
import org.slf4j.Logger;
import org.slf4j.helpers.SubstituteLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EventRecodingLogger implements Preference.OnPreferenceClickListener, Socket, Logger {
    public Object eventQueue;
    public Object logger;
    public Object name;

    public EventRecodingLogger(CalendarView calendarView, Context context, AttributeSet attributeSet, int i, int i2) {
        Locale locale = Locale.getDefault();
        if (!locale.equals((Locale) this.name)) {
            this.name = locale;
        }
        ConnectionPool connectionPool = new ConnectionPool(20, this);
        DayPickerView dayPickerView = new DayPickerView(context, attributeSet, i, i2);
        this.logger = dayPickerView;
        dayPickerView.mOnDaySelectedListener = connectionPool;
        calendarView.addView(dayPickerView);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, SSLException sSLException) {
        SubstituteLoggingEvent substituteLoggingEvent = new SubstituteLoggingEvent();
        System.currentTimeMillis();
        substituteLoggingEvent.logger = (SubstituteLogger) this.logger;
        Thread.currentThread().getName();
        ((Queue) this.eventQueue).add(substituteLoggingEvent);
    }

    public void dump() {
        CommonStatePrettyPrinter commonStatePrettyPrinter = (CommonStatePrettyPrinter) this.eventQueue;
        ArrayDeque arrayDeque = (ArrayDeque) this.logger;
        commonStatePrettyPrinter.getClass();
        arrayDeque.getClass();
        boolean isEmpty = arrayDeque.isEmpty();
        net.thunderbird.core.logging.Logger logger = (net.thunderbird.core.logging.Logger) commonStatePrettyPrinter.logger;
        String str = (String) commonStatePrettyPrinter.logTag;
        int i = 1;
        if (isEmpty) {
            Sink$CC.verbose$default(logger, str, null, new ResourceFileSystem$$ExternalSyntheticLambda0(i, commonStatePrettyPrinter), 2);
            return;
        }
        Sink$CC.verbose$default(logger, str, null, new CommonStatePrettyPrinter$$ExternalSyntheticLambda1(arrayDeque, commonStatePrettyPrinter), 2);
        Instant now = ((Clock) commonStatePrettyPrinter.clock).now();
        if (arrayDeque.size <= 1 || Duration.m994compareToLRDsOJo(now.m1004minusUwyO8pc((Instant) commonStatePrettyPrinter.lastFullDumpTimestamp), commonStatePrettyPrinter.fullDumpCooldown) < 0) {
            return;
        }
        commonStatePrettyPrinter.lastFullDumpTimestamp = now;
        Sink$CC.verbose$default(logger, str, null, new CommonStatePrettyPrinter$$ExternalSyntheticLambda1(commonStatePrettyPrinter, arrayDeque), 2);
    }

    @Override // org.slf4j.Logger
    public String getName() {
        return (String) this.name;
    }

    @Override // okio.Socket
    public Sink getSink() {
        return (RealBufferedSink) this.eventQueue;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (RealBufferedSource) this.logger;
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled() {
        return true;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.logger;
        preference.mOnClickListener = null;
        AccountSettingsFragment accountSettingsFragment = (AccountSettingsFragment) this.name;
        ArrayList openPgpProviderPackages = OpenPgpProviderUtil.getOpenPgpProviderPackages(accountSettingsFragment.requireContext().getApplicationContext());
        if (openPgpProviderPackages.size() != 1) {
            ((SwitchPreference) this.eventQueue).setSummary(accountSettingsFragment.getString(R.string.account_settings_crypto_summary_config));
            AppCompatActivity requireActivity = accountSettingsFragment.requireActivity();
            Intent intent = OpenPgpAppSelectDialog.MARKET_INTENT;
            Intent intent2 = new Intent(requireActivity, (Class<?>) OpenPgpAppSelectDialog.class);
            intent2.putExtra("account", legacyAccountDto.uuid);
            requireActivity.startActivity(intent2);
            return false;
        }
        Object obj = openPgpProviderPackages.get(0);
        obj.getClass();
        legacyAccountDto.setOpenPgpProvider((String) obj);
        AccountSettingsDataStore accountSettingsDataStore = accountSettingsFragment.dataStore;
        if (accountSettingsDataStore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataStore");
            throw null;
        }
        accountSettingsDataStore.saveSettingsInBackground();
        accountSettingsFragment.configureCryptoPreferences(legacyAccountDto);
        return false;
    }

    public InstanceFactory resolveDefinition$koin_core(KClass kClass, Qualifier qualifier, Qualifier qualifier2) {
        String str;
        kClass.getClass();
        qualifier2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(KClassExtKt.getFullName(kClass));
        sb.append(':');
        if (qualifier == null || (str = qualifier.getValue()) == null) {
            str = "";
        }
        sb.append(str);
        sb.append(':');
        sb.append(qualifier2);
        return (InstanceFactory) ((ConcurrentHashMap) this.logger).get(sb.toString());
    }

    public EventRecodingLogger(Dispatcher dispatcher) {
        this.name = dispatcher;
        this.logger = Okio.buffer((DefaultSocket$SocketSource) dispatcher.runningAsyncCalls);
        this.eventQueue = Okio.buffer((DefaultSocket$SocketSink) dispatcher.runningSyncCalls);
    }
}
