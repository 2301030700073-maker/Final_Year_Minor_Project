package okhttp3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.material.ripple.StateLayer;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.backends.RealOAuth2TokenProvider$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.MessagingControllerCommands$PendingCommand;
import com.fsck.k9.mailstore.DatabasePreviewType;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.SendState;
import com.fsck.k9.preferences.SettingsFile$Contents;
import com.fsck.k9.preferences.SettingsFile$Server;
import com.fsck.k9.preferences.SettingsParserException;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda4;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messageview.RealMessageViewRecipientFormatter;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.mikepenz.fastadapter.IIdDistributor;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.takisoft.datetimepicker.DatePickerDialog;
import com.takisoft.datetimepicker.widget.CalendarView;
import com.takisoft.datetimepicker.widget.DatePickerSpinnerDelegate;
import com.takisoft.datetimepicker.widget.DayPickerView;
import dagger.internal.Provider;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.Clock;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.Instant;
import kotlin.time.InstantKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.openid.appauth.AuthState;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationService;
import net.openid.appauth.TokenResponse;
import net.thunderbird.core.common.CoreCommonModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.state.DefaultStateMachine$StateRegistry;
import net.thunderbird.core.common.state.StateMachine;
import net.thunderbird.core.common.state.builder.StateMachineBuilder;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import net.thunderbird.core.common.state.debug.DiffContext;
import net.thunderbird.core.common.state.debug.ValueFormatter;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealConnectionPool;
import org.jsoup.helper.Validate;
import org.slf4j.event.EventRecodingLogger;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectionPool implements LockableDatabase.DbCallback, SearchView.OnQueryTextListener, OnApplyWindowInsetsListener, AccessibilityViewCommand, IIdDistributor, DayPickerView.OnDaySelectedListener, Provider, AuthorizationService.TokenResponseCallback, StateMachine {
    public final /* synthetic */ int $r8$classId;
    public Object delegate;

    public ConnectionPool(Logger logger, Clock clock, CloseableCoroutineScope closeableCoroutineScope, InvalidationTracker$implementation$1 invalidationTracker$implementation$1, InvalidationTracker$implementation$1 invalidationTracker$implementation$12, DefaultDebuggingSettingsPreferenceManager defaultDebuggingSettingsPreferenceManager) {
        int i = 29;
        this.$r8$classId = 29;
        XmlSettingsParser$$ExternalSyntheticLambda7 xmlSettingsParser$$ExternalSyntheticLambda7 = new XmlSettingsParser$$ExternalSyntheticLambda7(logger, defaultDebuggingSettingsPreferenceManager, invalidationTracker$implementation$1, invalidationTracker$implementation$12, clock, 9);
        StateMachineBuilder stateMachineBuilder = new StateMachineBuilder(closeableCoroutineScope);
        xmlSettingsParser$$ExternalSyntheticLambda7.invoke(stateMachineBuilder);
        MessageListState.WarmingUp warmingUp = stateMachineBuilder.initialState;
        EventRecodingLogger eventRecodingLogger = null;
        if (warmingUp == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Initial state is required.");
            throw null;
        }
        LinkedHashMap linkedHashMap = stateMachineBuilder.stateRegistrar;
        if (linkedHashMap.size() <= 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("At least two states must be defined.");
            throw null;
        }
        Iterator it = linkedHashMap.values().iterator();
        Map map = EmptyMap.INSTANCE;
        while (it.hasNext()) {
            map = MapsKt__MapsKt.plus(map, ((DefaultStateMachine$StateRegistry) it.next()).transitions);
        }
        if (map.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("At least one transition must be defined.");
            throw null;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            DefaultStateMachine$StateRegistry defaultStateMachine$StateRegistry = (DefaultStateMachine$StateRegistry) entry.getValue();
            defaultStateMachine$StateRegistry.getClass();
            if (defaultStateMachine$StateRegistry.transitions.isEmpty()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        if (!linkedHashMap2.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Only the final states can have no transitions. States without transaction: [ ", CollectionsKt.joinToString$default(linkedHashMap2.entrySet(), ", ", null, null, new JsonObject$$ExternalSyntheticLambda0(22), 30), " ]"));
            throw null;
        }
        Logger logger2 = stateMachineBuilder.logger;
        String str = stateMachineBuilder.logTag;
        StateLayer stateLayer = stateMachineBuilder.debuggerBuilder;
        if (stateLayer != null) {
            if (!stateLayer.bounded) {
                UriKt$$ExternalSyntheticBUOutline0.m("StateMachineDebugger must be enabled to use");
                throw null;
            }
            Logger logger3 = (Logger) stateLayer.rippleAlpha;
            if (logger3 == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("logger must be provided for StateMachineDebugger");
                throw null;
            }
            String str2 = (String) stateLayer.animatedAlpha;
            Clock clock2 = (Clock) stateLayer.interactions;
            if (clock2 == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("clock must be provided for StateMachineDebugger");
                throw null;
            }
            Function2 function2 = (Function2) stateLayer.currentInteraction;
            logger3.getClass();
            clock2.getClass();
            function2.getClass();
            EventRecodingLogger eventRecodingLogger2 = new EventRecodingLogger();
            eventRecodingLogger2.name = clock2;
            eventRecodingLogger2.logger = new ArrayDeque();
            Duration.Companion companion = Duration.Companion;
            long duration = InstantKt.toDuration(2, DurationUnit.SECONDS);
            logger3.getClass();
            clock2.getClass();
            function2.getClass();
            CommonStatePrettyPrinter commonStatePrettyPrinter = new CommonStatePrettyPrinter();
            commonStatePrettyPrinter.logger = logger3;
            commonStatePrettyPrinter.clock = clock2;
            commonStatePrettyPrinter.fullDumpCooldown = duration;
            commonStatePrettyPrinter.logTag = (str2 != null ? str2.concat("$") : "").concat("StatePrettyPrinter");
            ValueFormatter valueFormatter = new ValueFormatter(function2);
            commonStatePrettyPrinter.formatter = new BinaryBitmap(i, valueFormatter, new ConnectionPool(26, valueFormatter));
            Instant instant = Instant.MIN;
            commonStatePrettyPrinter.lastFullDumpTimestamp = InstantKt.fromEpochSeconds(999999999, -3217862419201L);
            eventRecodingLogger2.eventQueue = commonStatePrettyPrinter;
            eventRecodingLogger = eventRecodingLogger2;
        }
        warmingUp.getClass();
        linkedHashMap.getClass();
        LockableDatabase lockableDatabase = new LockableDatabase();
        lockableDatabase.mDb = logger2;
        lockableDatabase.mReadLock = str;
        lockableDatabase.mWriteLock = eventRecodingLogger;
        lockableDatabase.context = linkedHashMap;
        lockableDatabase.storageFilesProvider = map;
        lockableDatabase.inTransaction = new MutexImpl();
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(warmingUp);
        lockableDatabase.mSchemaDefinition = MutableStateFlow;
        lockableDatabase.generalSettingsManager = FlowKt.asStateFlow(MutableStateFlow);
        JobKt.launch$default(stateMachineBuilder.scope, null, null, new Preferences$getAccountsFlow$1((Object) lockableDatabase, (Object) warmingUp, (Continuation) null, 22, false), 3);
        this.delegate = lockableDatabase;
    }

    public static void appendEntryChanges(StringBuilder sb, Iterator it, Iterator it2, Function2 function2, Function1 function1, String str, String str2, DiffContext diffContext) {
        int i;
        String prependIndent;
        int i2 = diffContext.indentSize;
        int i3 = i2 + 2;
        sb.append(StringsKt__IndentKt.prependIndent(str, StringsKt__StringsJVMKt.repeat(" ", i2)));
        sb.append('\n');
        int i4 = 0;
        while (true) {
            if ((it == null || !it.hasNext()) && (it2 == null || !it2.hasNext())) {
                break;
            }
            Object obj = null;
            Object next = (it == null || !it.hasNext()) ? null : it.next();
            if (it2 != null && it2.hasNext()) {
                obj = it2.next();
            }
            String str3 = (String) function1.invoke(next);
            if (Intrinsics.areEqual(next, obj)) {
                i = i4 + 1;
                Integer valueOf = Integer.valueOf(i4);
                if (obj != null) {
                    next = obj;
                }
                if (next == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return;
                }
                Object invoke = function2.invoke(valueOf, next);
                invoke.getClass();
                str3.getClass();
                prependIndent = StringsKt__IndentKt.prependIndent(Config.CC.m(("[" + invoke + "]").concat(": "), str3, " (No changes)"), StringsKt__StringsJVMKt.repeat(" ", i3));
            } else {
                i = i4 + 1;
                Integer valueOf2 = Integer.valueOf(i4);
                if (obj != null) {
                    next = obj;
                }
                if (next == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return;
                }
                Object invoke2 = function2.invoke(valueOf2, next);
                String str4 = (String) function1.invoke(obj);
                invoke2.getClass();
                str3.getClass();
                str4.getClass();
                prependIndent = StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(("[" + invoke2 + "]").concat(": "), str3, " -> ", str4), StringsKt__StringsJVMKt.repeat(" ", i3));
            }
            sb.append(prependIndent);
            sb.append('\n');
            i4 = i;
        }
        sb.append(StringsKt__IndentKt.prependIndent(str2, StringsKt__StringsJVMKt.repeat(" ", i2)));
        sb.append('\n');
    }

    public static void dbCreateDatabaseFromScratch(SQLiteDatabase sQLiteDatabase) {
        Sink$CC.m(sQLiteDatabase, "DROP TABLE IF EXISTS account_extra_values", "CREATE TABLE account_extra_values (name TEXT NOT NULL PRIMARY KEY, value_text TEXT, value_integer INTEGER )", "DROP TABLE IF EXISTS folders", "CREATE TABLE folders (id INTEGER PRIMARY KEY,name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER, status TEXT, flagged_count INTEGER default 0, integrate INTEGER, top_group INTEGER, sync_enabled INTEGER DEFAULT 0, push_enabled INTEGER DEFAULT 0, visible INTEGER DEFAULT 1, notifications_enabled INTEGER DEFAULT 0, more_messages TEXT default \"unknown\", server_id TEXT, local_only INTEGER, type TEXT DEFAULT \"regular\", account_id TEXT)");
        Sink$CC.m(sQLiteDatabase, "DROP INDEX IF EXISTS folder_server_id", "CREATE INDEX folder_server_id ON folders (server_id)", "CREATE INDEX IF NOT EXISTS folders_account_id ON folders(account_id)", "DROP TABLE IF EXISTS folder_extra_values");
        Sink$CC.m(sQLiteDatabase, "CREATE TABLE folder_extra_values (folder_id INTEGER NOT NULL, name TEXT NOT NULL, value_text TEXT, value_integer INTEGER, PRIMARY KEY (folder_id, name))", "DROP TABLE IF EXISTS messages", "CREATE TABLE messages (id INTEGER PRIMARY KEY, deleted INTEGER default 0, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, preview_type TEXT default \"none\", preview TEXT, mime_type TEXT, normalized_subject_hash INTEGER, empty INTEGER default 0, read INTEGER default 0, flagged INTEGER default 0, answered INTEGER default 0, forwarded INTEGER default 0, message_part_id INTEGER,encryption_type TEXT,new_message INTEGER DEFAULT 0,account_id TEXT)", "DROP INDEX IF EXISTS new_messages");
        Sink$CC.m(sQLiteDatabase, "CREATE INDEX IF NOT EXISTS new_messages ON messages(new_message)", "CREATE INDEX IF NOT EXISTS messages_account_id ON messages(account_id)", "CREATE TRIGGER new_message_reset AFTER UPDATE OF read ON messages FOR EACH ROW WHEN NEW.read = 1 AND NEW.new_message = 1 BEGIN UPDATE messages SET new_message = 0 WHERE ROWID = NEW.ROWID; END", "DROP TABLE IF EXISTS message_parts");
        Sink$CC.m(sQLiteDatabase, "CREATE TABLE message_parts (id INTEGER PRIMARY KEY, type INTEGER NOT NULL, root INTEGER, parent INTEGER NOT NULL, seq INTEGER NOT NULL, mime_type TEXT, decoded_body_size INTEGER, display_name TEXT, header TEXT, encoding TEXT, charset TEXT, data_location INTEGER NOT NULL, data BLOB, preamble TEXT, epilogue TEXT, boundary TEXT, content_id TEXT, server_extra TEXT)", "CREATE TRIGGER set_message_part_root AFTER INSERT ON message_parts BEGIN UPDATE message_parts SET root=id WHERE root IS NULL AND ROWID = NEW.ROWID; END", "CREATE INDEX IF NOT EXISTS msg_uid ON messages (uid, folder_id)", "DROP INDEX IF EXISTS msg_folder_id");
        Sink$CC.m(sQLiteDatabase, "DROP INDEX IF EXISTS msg_folder_id_date", "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)", "DROP INDEX IF EXISTS msg_empty", "CREATE INDEX IF NOT EXISTS msg_empty ON messages (empty)");
        Sink$CC.m(sQLiteDatabase, "DROP INDEX IF EXISTS msg_read", "CREATE INDEX IF NOT EXISTS msg_read ON messages (read)", "DROP INDEX IF EXISTS msg_flagged", "CREATE INDEX IF NOT EXISTS msg_flagged ON messages (flagged)");
        Sink$CC.m(sQLiteDatabase, "DROP INDEX IF EXISTS msg_composite", "CREATE INDEX IF NOT EXISTS msg_composite ON messages (deleted, empty,folder_id,flagged,read)", "DROP INDEX IF EXISTS message_parts_root", "CREATE INDEX IF NOT EXISTS message_parts_root ON message_parts (root)");
        Sink$CC.m(sQLiteDatabase, "DROP TABLE IF EXISTS threads", "CREATE TABLE threads (id INTEGER PRIMARY KEY, message_id INTEGER, root INTEGER, parent INTEGER)", "DROP INDEX IF EXISTS threads_message_id", "CREATE INDEX IF NOT EXISTS threads_message_id ON threads (message_id)");
        Sink$CC.m(sQLiteDatabase, "DROP INDEX IF EXISTS threads_root", "CREATE INDEX IF NOT EXISTS threads_root ON threads (root)", "DROP INDEX IF EXISTS threads_parent", "CREATE INDEX IF NOT EXISTS threads_parent ON threads (parent)");
        Sink$CC.m(sQLiteDatabase, "DROP TRIGGER IF EXISTS set_thread_root", "CREATE TRIGGER set_thread_root AFTER INSERT ON threads BEGIN UPDATE threads SET root=id WHERE root IS NULL AND ROWID = NEW.ROWID; END", "DROP TABLE IF EXISTS outbox_state", "CREATE TABLE outbox_state (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,send_state TEXT,number_of_send_attempts INTEGER DEFAULT 0,error_timestamp INTEGER DEFAULT 0,error TEXT)");
        Sink$CC.m(sQLiteDatabase, "DROP TABLE IF EXISTS pending_commands", "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, data TEXT)", "DROP TRIGGER IF EXISTS delete_folder", "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; END;");
        Sink$CC.m(sQLiteDatabase, "DROP TRIGGER IF EXISTS delete_folder_extra_values", "CREATE TRIGGER delete_folder_extra_values BEFORE DELETE ON folders BEGIN DELETE FROM folder_extra_values WHERE old.id = folder_id; END;", "DROP TRIGGER IF EXISTS delete_message", "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM message_parts WHERE root = OLD.message_part_id; DELETE FROM messages_fulltext WHERE docid = OLD.id; DELETE FROM threads WHERE message_id = OLD.id; END");
        Sink$CC.m(sQLiteDatabase, "DROP TABLE IF EXISTS messages_fulltext", "CREATE VIRTUAL TABLE messages_fulltext USING fts4 (fulltext)", "DROP TABLE IF EXISTS notifications", "CREATE TABLE notifications (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,notification_id INTEGER UNIQUE,timestamp INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS notifications_timestamp");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS notifications_timestamp ON notifications(timestamp)");
    }

    public static void setDelegate(ConnectionPool connectionPool, Provider provider) {
        if (((Provider) connectionPool.delegate) != null) {
            throw new IllegalStateException();
        }
        connectionPool.delegate = provider;
    }

    public void appendScalarDiff(StringBuilder sb, Object obj, Object obj2, DiffContext diffContext, String str) {
        int i = diffContext.indentSize;
        ValueFormatter valueFormatter = (ValueFormatter) this.delegate;
        String format$default = ValueFormatter.format$default(valueFormatter, obj);
        String format$default2 = ValueFormatter.format$default(valueFormatter, obj2);
        if (!format$default.equals(format$default2)) {
            sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(str != null ? str.concat(": ") : "", format$default, " -> ", format$default2), StringsKt__StringsJVMKt.repeat(" ", i)));
            sb.append('\n');
        } else if (diffContext.isStateClassChanged) {
            sb.append(StringsKt__IndentKt.prependIndent(Config.CC.m(str != null ? str.concat(": ") : "", format$default, " (No changes)"), StringsKt__StringsJVMKt.repeat(" ", i)));
            sb.append('\n');
        }
    }

    public String buildDiff(Object obj, Object obj2, DiffContext diffContext) {
        boolean z;
        Map map;
        boolean z2;
        String str;
        boolean z3 = diffContext.isStateClassChanged;
        int i = diffContext.indentSize;
        StringBuilder sb = new StringBuilder();
        if (obj != null || obj2 != null) {
            Map propertyMap = obj != null ? RangesKt.toPropertyMap(obj) : null;
            EmptyMap emptyMap = EmptyMap.INSTANCE;
            Map map2 = propertyMap == null ? emptyMap : propertyMap;
            Map propertyMap2 = obj2 != null ? RangesKt.toPropertyMap(obj2) : null;
            Map map3 = propertyMap2 == null ? emptyMap : propertyMap2;
            if (map2.isEmpty() && map3.isEmpty()) {
                appendScalarDiff(sb, obj, obj2, diffContext, null);
                sb = sb;
            } else {
                final ConnectionPool connectionPool = this;
                for (String str2 : CollectionsKt.toSet(Validate.plus(map2.keySet(), (Iterable) map3.keySet()))) {
                    Object obj3 = map2.get(str2);
                    Object obj4 = map3.get(str2);
                    boolean z4 = (obj3 == null || RangesKt.toPropertyMap(obj3).isEmpty()) ? false : true;
                    boolean z5 = (obj4 == null || RangesKt.toPropertyMap(obj4).isEmpty()) ? false : true;
                    if (z4 && z5) {
                        if (!Intrinsics.areEqual(obj3, obj4)) {
                            sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(str2, ":"), StringsKt__StringsJVMKt.repeat(" ", i)));
                            sb.append('\n');
                            sb.append(connectionPool.buildDiff(obj3, obj4, new DiffContext(i + 2, z3)));
                        } else if (z3) {
                            ClassReference orCreateKotlinClass = obj3 != null ? Reflection.getOrCreateKotlinClass(obj3.getClass()) : null;
                            str2.getClass();
                            if (orCreateKotlinClass == null || (str = orCreateKotlinClass.getSimpleName()) == null) {
                                str = "null ";
                            }
                            sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(str2, ": ", str, "(No changes)"), StringsKt__StringsJVMKt.repeat(" ", i)));
                            sb.append('\n');
                        }
                        z = z3;
                        map = map2;
                    } else if ((obj3 instanceof Map) && (obj4 instanceof Map)) {
                        Map map4 = (Map) obj3;
                        Map map5 = (Map) obj4;
                        int size = map4.size();
                        int size2 = map5.size();
                        z = z3;
                        map = map2;
                        LinkedHashSet plus = Validate.plus(map4.keySet(), (Iterable) map5.keySet());
                        if (!plus.isEmpty()) {
                            Iterator it = plus.iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                Iterator it2 = it;
                                if (!Intrinsics.areEqual(map4.get(next), map5.get(next))) {
                                    z2 = true;
                                    break;
                                }
                                it = it2;
                            }
                        }
                        z2 = false;
                        boolean z6 = size > 5 || size2 > 5;
                        if (z2 && z6) {
                            str2.getClass();
                            sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(str2.concat(": "), "{" + size + " entries}", " -> ", CameraDevices$CC.m(size2, "{", " entries}")), StringsKt__StringsJVMKt.repeat(" ", i)));
                            sb.append('\n');
                        } else if (z2) {
                            final int i2 = 0;
                            appendEntryChanges(sb, map4.entrySet().iterator(), map5.entrySet().iterator(), new CoreCommonModuleKt$$ExternalSyntheticLambda0(28), new Function1(connectionPool) { // from class: net.thunderbird.core.common.state.debug.StateDiffer$$ExternalSyntheticLambda1
                                public final /* synthetic */ ConnectionPool f$0;

                                {
                                    this.f$0 = connectionPool;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    int i3 = i2;
                                    ConnectionPool connectionPool2 = this.f$0;
                                    switch (i3) {
                                        case 0:
                                            Map.Entry entry = (Map.Entry) obj5;
                                            return ValueFormatter.format$default((ValueFormatter) connectionPool2.delegate, entry != null ? entry.getValue() : null);
                                        default:
                                            return ValueFormatter.format$default((ValueFormatter) connectionPool2.delegate, obj5);
                                    }
                                }
                            }, "{", "}", diffContext);
                        } else if (z) {
                            str2.getClass();
                            sb.append(StringsKt__IndentKt.prependIndent(Config.CC.m(str2.concat(": "), "{" + size + " entries}", " (No changes)"), StringsKt__StringsJVMKt.repeat(" ", i)));
                            sb.append('\n');
                        }
                    } else {
                        z = z3;
                        map = map2;
                        if ((obj3 instanceof Collection) && (obj4 instanceof Collection)) {
                            Collection collection = (Collection) obj3;
                            Collection collection2 = (Collection) obj4;
                            int size3 = collection.size();
                            int size4 = collection2.size();
                            boolean z7 = size3 > 5 || size4 > 5;
                            if (size3 != size4 && z7) {
                                str2.getClass();
                                sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(str2.concat(": "), "[" + size3 + " items]", " -> ", CameraDevices$CC.m(size4, "[", " items]")), StringsKt__StringsJVMKt.repeat(" ", i)));
                                sb.append('\n');
                            } else if (size3 != size4) {
                                final int i3 = 1;
                                appendEntryChanges(sb, collection.iterator(), collection2.iterator(), new CoreCommonModuleKt$$ExternalSyntheticLambda0(29), new Function1(connectionPool) { // from class: net.thunderbird.core.common.state.debug.StateDiffer$$ExternalSyntheticLambda1
                                    public final /* synthetic */ ConnectionPool f$0;

                                    {
                                        this.f$0 = connectionPool;
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        int i32 = i3;
                                        ConnectionPool connectionPool2 = this.f$0;
                                        switch (i32) {
                                            case 0:
                                                Map.Entry entry = (Map.Entry) obj5;
                                                return ValueFormatter.format$default((ValueFormatter) connectionPool2.delegate, entry != null ? entry.getValue() : null);
                                            default:
                                                return ValueFormatter.format$default((ValueFormatter) connectionPool2.delegate, obj5);
                                        }
                                    }
                                }, "[", "]", diffContext);
                            } else if (z) {
                                str2.getClass();
                                sb.append(StringsKt__IndentKt.prependIndent(Config.CC.m(str2.concat(": "), "[" + size3 + " items]", " (No changes)"), StringsKt__StringsJVMKt.repeat(" ", i)));
                                sb.append('\n');
                            }
                        } else {
                            StringBuilder sb2 = sb;
                            connectionPool.appendScalarDiff(sb2, obj3, obj4, diffContext, str2);
                            sb = sb2;
                        }
                    }
                    connectionPool = this;
                    z3 = z;
                    map2 = map;
                }
            }
        }
        return sb.toString();
    }

    public List checkIds(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AbstractItem abstractItem = (AbstractItem) list.get(i);
            abstractItem.getClass();
            if (abstractItem.getIdentifier() == -1) {
                abstractItem.setIdentifier(((AtomicLong) this.delegate).decrementAndGet());
            }
        }
        return list;
    }

    public String create(String str) {
        if (str.length() <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Key must not be empty");
            return null;
        }
        return ((AccountId) this.delegate) + "." + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x0390, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0409 A[LOOP:21: B:146:0x0246->B:177:0x0409, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v7, types: [byte[], java.io.Serializable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DecoderResult decode(androidx.compose.runtime.Latch r26, java.util.Map r27) {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.decode(androidx.compose.runtime.Latch, java.util.Map):com.google.zxing.common.DecoderResult");
    }

    public int decodeWithECCount(int[] iArr, int i) {
        int[] iArr2;
        int[] iArr3;
        BinaryBitmap binaryBitmap;
        BinaryBitmap binaryBitmap2;
        int i2;
        int i3;
        BinaryBitmap binaryBitmap3;
        int i4;
        int i5;
        int i6 = i;
        GenericGF genericGF = (GenericGF) this.delegate;
        int i7 = 0;
        if (iArr.length == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return 0;
        }
        int length = iArr.length;
        int i8 = 1;
        if (length <= 1 || iArr[0] != 0) {
            iArr2 = iArr;
        } else {
            int i9 = 1;
            while (i9 < length && iArr[i9] == 0) {
                i9++;
            }
            if (i9 == length) {
                iArr2 = new int[]{0};
            } else {
                int i10 = length - i9;
                int[] iArr4 = new int[i10];
                System.arraycopy(iArr, i9, iArr4, 0, i10);
                iArr2 = iArr4;
            }
        }
        int[] iArr5 = new int[i6];
        boolean z = true;
        for (int i11 = 0; i11 < i6; i11++) {
            int i12 = genericGF.expTable[genericGF.generatorBase + i11];
            if (i12 == 0) {
                i5 = iArr2[iArr2.length - 1];
            } else {
                if (i12 == 1) {
                    i4 = 0;
                    for (int i13 : iArr2) {
                        GenericGF genericGF2 = GenericGF.QR_CODE_FIELD_256;
                        i4 ^= i13;
                    }
                } else {
                    i4 = iArr2[0];
                    int length2 = iArr2.length;
                    for (int i14 = 1; i14 < length2; i14++) {
                        i4 = genericGF.multiply(i12, i4) ^ iArr2[i14];
                    }
                }
                i5 = i4;
            }
            iArr5[(i6 - 1) - i11] = i5;
            if (i5 != 0) {
                z = false;
            }
        }
        if (z) {
            return 0;
        }
        BinaryBitmap binaryBitmap4 = new BinaryBitmap(genericGF, iArr5);
        genericGF.getClass();
        BinaryBitmap binaryBitmap5 = genericGF.zero;
        if (i6 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return 0;
        }
        int[] iArr6 = new int[i6 + 1];
        iArr6[0] = 1;
        BinaryBitmap binaryBitmap6 = new BinaryBitmap(genericGF, iArr6);
        if (binaryBitmap6.getDegree() >= binaryBitmap4.getDegree()) {
            binaryBitmap6 = binaryBitmap4;
            binaryBitmap4 = binaryBitmap6;
        }
        BinaryBitmap binaryBitmap7 = binaryBitmap4;
        BinaryBitmap binaryBitmap8 = binaryBitmap6;
        BinaryBitmap binaryBitmap9 = genericGF.one;
        BinaryBitmap binaryBitmap10 = binaryBitmap5;
        while (binaryBitmap8.getDegree() * 2 >= i6) {
            if (binaryBitmap8.isZero()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            int inverse = genericGF.inverse(binaryBitmap8.getCoefficient(binaryBitmap8.getDegree()));
            BinaryBitmap binaryBitmap11 = binaryBitmap5;
            while (binaryBitmap7.getDegree() >= binaryBitmap8.getDegree() && !binaryBitmap7.isZero()) {
                int degree = binaryBitmap7.getDegree() - binaryBitmap8.getDegree();
                int multiply = genericGF.multiply(binaryBitmap7.getCoefficient(binaryBitmap7.getDegree()), inverse);
                if (degree < 0) {
                    int i15 = i7;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return i15;
                }
                if (multiply == 0) {
                    binaryBitmap2 = binaryBitmap5;
                } else {
                    int[] iArr7 = new int[degree + 1];
                    iArr7[i7] = multiply;
                    binaryBitmap2 = new BinaryBitmap(genericGF, iArr7);
                }
                binaryBitmap11 = binaryBitmap11.addOrSubtract(binaryBitmap2);
                int[] iArr8 = (int[]) binaryBitmap8.matrix;
                GenericGF genericGF3 = (GenericGF) binaryBitmap8.binarizer;
                if (degree < 0) {
                    int i16 = i7;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return i16;
                }
                if (multiply == 0) {
                    binaryBitmap3 = genericGF3.zero;
                    i3 = i7;
                    i2 = i8;
                } else {
                    i2 = i8;
                    int length3 = iArr8.length;
                    int[] iArr9 = new int[degree + length3];
                    i3 = i7;
                    while (i7 < length3) {
                        iArr9[i7] = genericGF3.multiply(iArr8[i7], multiply);
                        i7++;
                    }
                    binaryBitmap3 = new BinaryBitmap(genericGF3, iArr9);
                }
                binaryBitmap7 = binaryBitmap7.addOrSubtract(binaryBitmap3);
                i8 = i2;
                i7 = i3;
            }
            int i17 = i7;
            int i18 = i8;
            GenericGF genericGF4 = (GenericGF) binaryBitmap11.binarizer;
            if (!genericGF4.equals((GenericGF) binaryBitmap9.binarizer)) {
                UriKt$$ExternalSyntheticBUOutline0.m("GenericGFPolys do not have same GenericGF field");
                return i17;
            }
            if (binaryBitmap11.isZero() || binaryBitmap9.isZero()) {
                binaryBitmap = genericGF4.zero;
            } else {
                int[] iArr10 = (int[]) binaryBitmap11.matrix;
                int length4 = iArr10.length;
                int[] iArr11 = (int[]) binaryBitmap9.matrix;
                int length5 = iArr11.length;
                int[] iArr12 = new int[(length4 + length5) - 1];
                for (int i19 = i17; i19 < length4; i19++) {
                    int i20 = iArr10[i19];
                    int i21 = i17;
                    while (i21 < length5) {
                        int i22 = i19 + i21;
                        iArr12[i22] = iArr12[i22] ^ genericGF4.multiply(i20, iArr11[i21]);
                        i21++;
                        iArr10 = iArr10;
                    }
                }
                binaryBitmap = new BinaryBitmap(genericGF4, iArr12);
            }
            BinaryBitmap addOrSubtract = binaryBitmap.addOrSubtract(binaryBitmap10);
            if (binaryBitmap7.getDegree() >= binaryBitmap8.getDegree()) {
                throw new IllegalStateException("Division algorithm failed to reduce polynomial? r: " + binaryBitmap7 + ", rLast: " + binaryBitmap8);
            }
            BinaryBitmap binaryBitmap12 = binaryBitmap7;
            binaryBitmap7 = binaryBitmap8;
            binaryBitmap8 = binaryBitmap12;
            i8 = i18;
            binaryBitmap10 = binaryBitmap9;
            i7 = i17;
            binaryBitmap9 = addOrSubtract;
            i6 = i;
        }
        int i23 = i7;
        int i24 = i8;
        int coefficient = binaryBitmap9.getCoefficient(i23);
        if (coefficient == 0) {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        }
        int inverse2 = genericGF.inverse(coefficient);
        BinaryBitmap multiply2 = binaryBitmap9.multiply(inverse2);
        BinaryBitmap multiply3 = binaryBitmap8.multiply(inverse2);
        BinaryBitmap[] binaryBitmapArr = new BinaryBitmap[2];
        binaryBitmapArr[i23] = multiply2;
        binaryBitmapArr[i24] = multiply3;
        BinaryBitmap binaryBitmap13 = binaryBitmapArr[i23];
        BinaryBitmap binaryBitmap14 = binaryBitmapArr[i24];
        int degree2 = binaryBitmap13.getDegree();
        if (degree2 == i24) {
            iArr3 = new int[]{binaryBitmap13.getCoefficient(i24)};
        } else {
            int[] iArr13 = new int[degree2];
            int i25 = 0;
            for (int i26 = 1; i26 < genericGF.size && i25 < degree2; i26++) {
                if (binaryBitmap13.evaluateAt(i26) == 0) {
                    iArr13[i25] = genericGF.inverse(i26);
                    i25++;
                }
            }
            if (i25 != degree2) {
                throw new ReedSolomonException("Error locator degree does not match number of roots");
            }
            iArr3 = iArr13;
        }
        int length6 = iArr3.length;
        int[] iArr14 = new int[length6];
        for (int i27 = 0; i27 < length6; i27++) {
            int inverse3 = genericGF.inverse(iArr3[i27]);
            int i28 = 1;
            for (int i29 = 0; i29 < length6; i29++) {
                if (i27 != i29) {
                    int multiply4 = genericGF.multiply(iArr3[i29], inverse3);
                    i28 = genericGF.multiply(i28, (multiply4 & 1) == 0 ? multiply4 | 1 : multiply4 & (-2));
                }
            }
            int multiply5 = genericGF.multiply(binaryBitmap14.evaluateAt(inverse3), genericGF.inverse(i28));
            iArr14[i27] = multiply5;
            if (genericGF.generatorBase != 0) {
                iArr14[i27] = genericGF.multiply(multiply5, inverse3);
            }
        }
        for (int i30 = 0; i30 < iArr3.length; i30++) {
            int length7 = iArr.length - 1;
            int i31 = iArr3[i30];
            if (i31 == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                return 0;
            }
            int i32 = length7 - genericGF.logTable[i31];
            if (i32 < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[i32] = iArr[i32] ^ iArr14[i30];
        }
        return iArr3.length;
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        switch (this.$r8$classId) {
            case 1:
                ContentValues contentValues = new ContentValues();
                contentValues.put("deleted", (Integer) 1);
                DatabasePreviewType.Companion.getClass();
                contentValues.put("preview_type", SendState.Companion.fromPreviewType(1).databaseValue);
                contentValues.put("read", (Integer) 0);
                contentValues.put("flagged", (Integer) 0);
                contentValues.put("answered", (Integer) 0);
                contentValues.put("forwarded", (Integer) 0);
                contentValues.putNull("subject");
                contentValues.putNull("sender_list");
                contentValues.putNull("date");
                contentValues.putNull("to_list");
                contentValues.putNull("cc_list");
                contentValues.putNull("bcc_list");
                contentValues.putNull("preview");
                contentValues.putNull("reply_to_list");
                contentValues.putNull("message_part_id");
                contentValues.putNull("flags");
                contentValues.putNull("attachment_count");
                contentValues.putNull("internal_date");
                contentValues.putNull("mime_type");
                contentValues.putNull("encryption_type");
                LocalMessage localMessage = (LocalMessage) this.delegate;
                sQLiteDatabase.update("messages", contentValues, "id = ?", new String[]{Long.toString(localMessage.databaseId)});
                LocalFolder localFolder = localMessage.mFolder;
                long j = localMessage.messagePartId;
                LocalStore localStore = localFolder.localStore;
                localStore.database.execute(false, new LocalFolder.AnonymousClass6(localFolder, j, 1));
                localStore.database.execute(false, new LocalFolder.AnonymousClass15(j));
                LocalFolder localFolder2 = localMessage.mFolder;
                long j2 = localMessage.databaseId;
                localFolder2.getClass();
                sQLiteDatabase.delete("messages_fulltext", "docid = ?", new String[]{Long.toString(j2)});
                break;
            default:
                sQLiteDatabase.delete("pending_commands", "id = ?", new String[]{Long.toString(((MessagingControllerCommands$PendingCommand) this.delegate).databaseId)});
                break;
        }
        return null;
    }

    @Override // javax.inject.Provider
    public Object get() {
        Provider provider = (Provider) this.delegate;
        if (provider != null) {
            return provider.get();
        }
        throw new IllegalStateException();
    }

    @Override // net.thunderbird.core.common.state.StateMachine
    public StateFlow getCurrentState() {
        return ((StateMachine) this.delegate).getCurrentState();
    }

    @Override // net.thunderbird.core.common.state.StateMachine
    public Object getCurrentStateSnapshot() {
        return (MessageListState) ((StateMachine) this.delegate).getCurrentStateSnapshot();
    }

    public long getId() {
        return ((Cursor) this.delegate).getLong(0);
    }

    public String getName() {
        String string = ((Cursor) this.delegate).getString(1);
        string.getClass();
        return string;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        AppBarLayout appBarLayout = (AppBarLayout) this.delegate;
        WindowInsetsCompat windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
        if (!Objects.equals(appBarLayout.lastInsets, windowInsetsCompat2)) {
            appBarLayout.lastInsets = windowInsetsCompat2;
            appBarLayout.setWillNotDraw(!(appBarLayout.statusBarForeground != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // com.takisoft.datetimepicker.widget.DayPickerView.OnDaySelectedListener
    public void onDaySelected(Calendar calendar) {
        EventRecodingLogger eventRecodingLogger = (EventRecodingLogger) this.delegate;
        if (((CalendarView.OnDateChangeListener) eventRecodingLogger.eventQueue) != null) {
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            DatePickerSpinnerDelegate datePickerSpinnerDelegate = DatePickerSpinnerDelegate.this;
            datePickerSpinnerDelegate.setDate(i, i2, i3);
            datePickerSpinnerDelegate.updateSpinners();
            datePickerSpinnerDelegate.mDelegator.sendAccessibilityEvent(4);
            DatePickerDialog datePickerDialog = datePickerSpinnerDelegate.mOnDateChangedListener;
            if (datePickerDialog != null) {
                datePickerDialog.mDatePicker.init(datePickerSpinnerDelegate.getYear(), datePickerSpinnerDelegate.getMonth(), datePickerSpinnerDelegate.getDayOfMonth(), datePickerDialog);
            }
        }
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        int i = this.$r8$classId;
        str.getClass();
        switch (i) {
            case 6:
                ItemAdapter itemAdapter = ((ChooseFolderActivity) this.delegate).itemAdapter;
                if (itemAdapter != null) {
                    itemAdapter.itemFilter.filter(str);
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ItemAdapter itemAdapter2 = ((ManageFoldersFragment) this.delegate).itemAdapter;
                if (itemAdapter2 != null) {
                    itemAdapter2.itemFilter.filter(str);
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                throw null;
            default:
                return false;
        }
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        int i = this.$r8$classId;
        str.getClass();
        switch (i) {
            case 6:
                ItemAdapter itemAdapter = ((ChooseFolderActivity) this.delegate).itemAdapter;
                if (itemAdapter != null) {
                    itemAdapter.itemFilter.filter(str);
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ItemAdapter itemAdapter2 = ((ManageFoldersFragment) this.delegate).itemAdapter;
                if (itemAdapter2 != null) {
                    itemAdapter2.itemFilter.filter(str);
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                throw null;
            default:
                MessageListFragment messageListFragment = (MessageListFragment) this.delegate;
                FolderInfoHolder folderInfoHolder = messageListFragment.currentFolder;
                Long valueOf = folderInfoHolder != null ? Long.valueOf(folderInfoHolder.databaseId) : null;
                MessageHomeActivity messageHomeActivity = messageListFragment.fragmentListener;
                if (messageHomeActivity == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                    throw null;
                }
                messageHomeActivity.startSearch(str, messageListFragment.account, valueOf);
                messageListFragment.collapseSearchView$1();
                return true;
        }
    }

    @Override // net.openid.appauth.AuthorizationService.TokenResponseCallback
    public void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException) {
        AuthorizationException authorizationException2;
        String str;
        ArrayList arrayList;
        ((AuthState) this.delegate).update(tokenResponse, authorizationException);
        if (authorizationException == null) {
            AuthState authState = (AuthState) this.delegate;
            authState.mNeedsTokenRefreshOverride = false;
            str = authState.getAccessToken();
            ((AuthState) this.delegate).getIdToken();
            authorizationException2 = null;
        } else {
            authorizationException2 = authorizationException;
            str = null;
        }
        synchronized (((AuthState) this.delegate).mPendingActionsSyncObject) {
            AuthState authState2 = (AuthState) this.delegate;
            arrayList = authState2.mPendingActions;
            authState2.mPendingActions = null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RealOAuth2TokenProvider$$ExternalSyntheticLambda0 realOAuth2TokenProvider$$ExternalSyntheticLambda0 = (RealOAuth2TokenProvider$$ExternalSyntheticLambda0) it.next();
            Ref$ObjectRef ref$ObjectRef = realOAuth2TokenProvider$$ExternalSyntheticLambda0.f$0;
            Ref$ObjectRef ref$ObjectRef2 = realOAuth2TokenProvider$$ExternalSyntheticLambda0.f$1;
            CountDownLatch countDownLatch = realOAuth2TokenProvider$$ExternalSyntheticLambda0.f$2;
            ref$ObjectRef.element = str;
            ref$ObjectRef2.element = authorizationException2;
            countDownLatch.countDown();
        }
    }

    public SettingsFile$Contents parse() {
        int next;
        XmlPullParser xmlPullParser = (XmlPullParser) this.delegate;
        SettingsFile$Contents settingsFile$Contents = null;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                if (Intrinsics.areEqual(xmlPullParser.getName(), "k9settings")) {
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    String readAttribute = readAttribute("format");
                    Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(readAttribute);
                    if (intOrNull == null) {
                        throw new SettingsParserException("Invalid file format version: ".concat(readAttribute), null);
                    }
                    int intValue = intOrNull.intValue();
                    if (intValue != 1) {
                        throw new SettingsParserException(CameraDevices$CC.m("Unsupported file format version: ", intValue), null);
                    }
                    String readAttribute2 = readAttribute("version");
                    Integer intOrNull2 = StringsKt__StringsJVMKt.toIntOrNull(readAttribute2);
                    if (intOrNull2 != null) {
                        if (intOrNull2.intValue() <= 0) {
                            intOrNull2 = null;
                        }
                        if (intOrNull2 != null) {
                            int intValue2 = intOrNull2.intValue();
                            readElement(new SimpleActor$$ExternalSyntheticLambda0(this, ref$ObjectRef, ref$ObjectRef2, 28));
                            Map map = (Map) ref$ObjectRef.element;
                            List list = (List) ref$ObjectRef2.element;
                            if (list == null) {
                                list = EmptyList.INSTANCE;
                            }
                            settingsFile$Contents = new SettingsFile$Contents(intValue2, map, list);
                        }
                    }
                    throw new SettingsParserException("Invalid content version: ".concat(readAttribute2), null);
                }
                skipElement();
            }
        } while (next != 1);
        if (settingsFile$Contents != null) {
            return settingsFile$Contents;
        }
        throw new SettingsParserException("Missing 'k9settings' element", null);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.delegate;
        if (!swipeDismissBehavior.canSwipeDismissView(view)) {
            return false;
        }
        boolean z = view.getLayoutDirection() == 1;
        int i = swipeDismissBehavior.swipeDirection;
        int width = (!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        view.offsetLeftAndRight(width);
        view.setAlpha(0.0f);
        BaseTransientBottomBar.AnonymousClass3 anonymousClass3 = swipeDismissBehavior.listener;
        if (anonymousClass3 != null) {
            anonymousClass3.onDismiss(view);
        }
        return true;
    }

    @Override // net.thunderbird.core.common.state.StateMachine
    public Object process(Object obj, Continuation continuation) {
        return ((StateMachine) this.delegate).process((MessageListEvent) obj, continuation);
    }

    public String readAttribute(String str) {
        String attributeValue = ((XmlPullParser) this.delegate).getAttributeValue(null, str);
        if (attributeValue != null) {
            return attributeValue;
        }
        throw new SettingsParserException(CameraDevices$CC.m("Missing '", str, "' attribute"), null);
    }

    public void readElement(Function1 function1) {
        XmlPullParser xmlPullParser = (XmlPullParser) this.delegate;
        if (xmlPullParser.getEventType() != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            return;
        }
        String name = xmlPullParser.getName();
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                throw new SettingsParserException(CameraDevices$CC.m("End of document reached while reading element '", name, "'"), null);
            }
            if (next != 3) {
                function1.invoke(Integer.valueOf(next));
            } else if (Intrinsics.areEqual(xmlPullParser.getName(), name) && xmlPullParser.getDepth() == depth) {
                return;
            }
        }
    }

    public SettingsFile$Server readServerSettings() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef4 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef5 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef6 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef7 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef8 = new Ref$ObjectRef();
        String attributeValue = ((XmlPullParser) this.delegate).getAttributeValue(null, "type");
        readElement(new XmlSettingsParser$$ExternalSyntheticLambda4(this, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3, ref$ObjectRef4, ref$ObjectRef5, ref$ObjectRef7, ref$ObjectRef6, ref$ObjectRef8, 0));
        return new SettingsFile$Server(attributeValue, (String) ref$ObjectRef.element, (String) ref$ObjectRef2.element, (String) ref$ObjectRef3.element, (String) ref$ObjectRef4.element, (String) ref$ObjectRef5.element, (String) ref$ObjectRef6.element, (String) ref$ObjectRef7.element, (Map) ref$ObjectRef8.element);
    }

    public LinkedHashMap readSettingsContainer() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        readElement(new DI$$ExternalSyntheticLambda0(18, this, linkedHashMap));
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        return linkedHashMap;
    }

    public String readText() {
        XmlPullParser xmlPullParser = (XmlPullParser) this.delegate;
        if (xmlPullParser.next() != 4) {
            return "";
        }
        String text = xmlPullParser.getText();
        text.getClass();
        return text;
    }

    public String serverIdOrThrow() {
        String string = ((Cursor) this.delegate).getString(3);
        if (string != null) {
            return string;
        }
        throw new IllegalStateException(("No server ID found for folder '" + getName() + "' (" + getId() + ")").toString());
    }

    public void skipElement() {
        Log.d("Skipping element '%s'", ((XmlPullParser) this.delegate).getName());
        readElement(new Data$$ExternalSyntheticLambda0(15));
    }

    public void upgradeDatabase(SQLiteDatabase sQLiteDatabase) {
        LocalStore.AnonymousClass3 anonymousClass3 = (LocalStore.AnonymousClass3) this.delegate;
        Log.i("Upgrading database from version %d to version %d", Integer.valueOf(sQLiteDatabase.getVersion()), 91);
        sQLiteDatabase.beginTransaction();
        try {
            if (sQLiteDatabase.getVersion() > 91) {
                throw new AssertionError("Database downgrades are not supported. Please fix the account database '" + LocalStore.this.account.uuid + "' manually or clear app data.");
            }
            if (sQLiteDatabase.getVersion() < 61) {
                dbCreateDatabaseFromScratch(sQLiteDatabase);
            } else {
                Utf8.SafeProcessor.upgradeDatabase(sQLiteDatabase, anonymousClass3);
            }
            sQLiteDatabase.setVersion(91);
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            if (sQLiteDatabase.getVersion() == 91) {
                return;
            }
            DBUtil$$ExternalSyntheticBUOutline0.m("Database upgrade failed!");
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public /* synthetic */ ConnectionPool(int i, boolean z) {
        this.$r8$classId = i;
    }

    public ConnectionPool(AccountId accountId) {
        this.$r8$classId = 28;
        accountId.getClass();
        this.delegate = accountId;
    }

    public ConnectionPool(RealMessageViewRecipientFormatter realMessageViewRecipientFormatter, int i) {
        this.$r8$classId = 9;
        realMessageViewRecipientFormatter.getClass();
        this.delegate = realMessageViewRecipientFormatter;
    }

    public ConnectionPool(InputStream inputStream) {
        this.$r8$classId = 3;
        inputStream.getClass();
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new InputStreamReader(inputStream));
        this.delegate = newPullParser;
    }

    public /* synthetic */ ConnectionPool(int i, Object obj) {
        this.$r8$classId = i;
        this.delegate = obj;
    }

    public ConnectionPool(int i) {
        this.$r8$classId = i;
        int i2 = 16;
        switch (i) {
            case 17:
                this.delegate = new ConnectionPool(i2, GenericGF.QR_CODE_FIELD_256);
                break;
            case 18:
                this.delegate = new AtomicLong(-2L);
                break;
            case 19:
                this.delegate = new SparseArray();
                break;
            case 24:
                this.delegate = new ConcurrentHashMap(16);
                break;
            default:
                TimeUnit.MINUTES.getClass();
                TaskRunner taskRunner = TaskRunner.INSTANCE;
                taskRunner.getClass();
                this.delegate = new RealConnectionPool(taskRunner);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a A[Catch: ChecksumException | FormatException -> 0x0054, TryCatch #1 {ChecksumException | FormatException -> 0x0054, blocks: (B:10:0x0011, B:11:0x0026, B:13:0x002a, B:14:0x002d, B:16:0x0031, B:18:0x003b, B:20:0x0041, B:25:0x0046), top: B:9:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DecoderResult decode(com.google.zxing.common.BitMatrix r9, java.util.Map r10) {
        /*
            r8 = this;
            androidx.compose.runtime.Latch r0 = new androidx.compose.runtime.Latch
            r0.<init>(r9)
            r9 = 0
            com.google.zxing.common.DecoderResult r8 = r8.decode(r0, r10)     // Catch: com.google.zxing.ChecksumException -> Lb com.google.zxing.FormatException -> Lf
            return r8
        Lb:
            r1 = move-exception
            r2 = r1
            r1 = r9
            goto L11
        Lf:
            r1 = move-exception
            r2 = r9
        L11:
            r0.remask()     // Catch: java.lang.Throwable -> L54
            r0.awaiters = r9     // Catch: java.lang.Throwable -> L54
            r0.spareList = r9     // Catch: java.lang.Throwable -> L54
            r9 = 1
            r0._isOpen = r9     // Catch: java.lang.Throwable -> L54
            r0.readVersion()     // Catch: java.lang.Throwable -> L54
            r0.readFormatInformation()     // Catch: java.lang.Throwable -> L54
            java.lang.Object r9 = r0.lock     // Catch: java.lang.Throwable -> L54
            com.google.zxing.common.BitMatrix r9 = (com.google.zxing.common.BitMatrix) r9     // Catch: java.lang.Throwable -> L54
            r3 = 0
        L26:
            int r4 = r9.width     // Catch: java.lang.Throwable -> L54
            if (r3 >= r4) goto L46
            int r4 = r3 + 1
            r5 = r4
        L2d:
            int r6 = r9.height     // Catch: java.lang.Throwable -> L54
            if (r5 >= r6) goto L44
            boolean r6 = r9.get(r3, r5)     // Catch: java.lang.Throwable -> L54
            boolean r7 = r9.get(r5, r3)     // Catch: java.lang.Throwable -> L54
            if (r6 == r7) goto L41
            r9.flip(r5, r3)     // Catch: java.lang.Throwable -> L54
            r9.flip(r3, r5)     // Catch: java.lang.Throwable -> L54
        L41:
            int r5 = r5 + 1
            goto L2d
        L44:
            r3 = r4
            goto L26
        L46:
            com.google.zxing.common.DecoderResult r8 = r8.decode(r0, r10)     // Catch: java.lang.Throwable -> L54
            okio.AsyncTimeout$Companion r9 = new okio.AsyncTimeout$Companion     // Catch: java.lang.Throwable -> L54
            r10 = 20
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L54
            r8.other = r9     // Catch: java.lang.Throwable -> L54
            return r8
        L54:
            if (r1 == 0) goto L57
            throw r1
        L57:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ConnectionPool.decode(com.google.zxing.common.BitMatrix, java.util.Map):com.google.zxing.common.DecoderResult");
    }
}
