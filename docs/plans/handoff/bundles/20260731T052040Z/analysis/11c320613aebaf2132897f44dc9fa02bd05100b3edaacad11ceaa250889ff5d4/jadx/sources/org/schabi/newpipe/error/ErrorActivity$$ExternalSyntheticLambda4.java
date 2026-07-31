package org.schabi.newpipe.error;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import com.grack.nanojson.JsonParserException;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.nio.file.Files;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipInputStream;
import okhttp3.Dispatcher;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.error.ErrorActivity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;
import org.schabi.newpipe.local.bookmark.BookmarkFragment$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.settings.BackupRestoreSettingsFragment;
import org.schabi.newpipe.settings.export.BackupFileLocator;
import org.schabi.newpipe.settings.export.ImportExportManager;
import org.schabi.newpipe.streams.DataReader;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;
import org.schabi.newpipe.util.ZipHelper;
import org.schabi.newpipe.views.NewPipeEditText;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ErrorActivity$$ExternalSyntheticLambda4 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ErrorActivity$$ExternalSyntheticLambda4(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        int i3 = 1;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                String str = (String) obj3;
                ErrorActivity errorActivity = (ErrorActivity) obj2;
                Context context = (Context) obj;
                ErrorActivity.Companion companion = ErrorActivity.Companion;
                if (!str.equals("EMAIL")) {
                    if (str.equals("GITHUB")) {
                        Transition.Impl26.openUrlInApp(errorActivity, "https://github.com/TeamNewPipe/NewPipe/issues");
                        return;
                    }
                    return;
                }
                Intent intent = new Intent("android.intent.action.SENDTO");
                Uri parse = Uri.parse("mailto:");
                parse.getClass();
                Intent putExtra = intent.setData(parse).putExtra("android.intent.extra.EMAIL", new String[]{"crashreport@newpipe.schabi.org"}).putExtra("android.intent.extra.SUBJECT", "Exception in  " + errorActivity.getString(R.string.app_name) + " 0.29.0").putExtra("android.intent.extra.TEXT", errorActivity.buildJson());
                putExtra.getClass();
                try {
                    context.startActivity(putExtra);
                    return;
                } catch (ActivityNotFoundException unused) {
                    Toast.makeText(context, R.string.no_app_to_open_intent, 1).show();
                    return;
                }
            case 1:
                ((StreamDialogEntry) ((List) obj3).get(i)).action.onClick((Fragment) obj2, (StreamInfoItem) obj);
                return;
            case 2:
                BookmarkFragment bookmarkFragment = (BookmarkFragment) obj3;
                int i4 = BookmarkFragment.$r8$clinit;
                long uid = ((PlaylistMetadataEntry) obj2).getUid();
                String obj4 = ((NewPipeEditText) ((TokenData) obj).builder).getText().toString();
                Dispatcher dispatcher = bookmarkFragment.localPlaylistManager;
                if (dispatcher == null) {
                    return;
                }
                MaybeObserveOn modifyPlaylist = dispatcher.modifyPlaylist(uid, -2L, obj4, false);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new FeedViewModel$$ExternalSyntheticLambda0(9), new BookmarkFragment$$ExternalSyntheticLambda0(bookmarkFragment, 2), Functions.EMPTY_ACTION);
                try {
                    modifyPlaylist.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                    bookmarkFragment.disposables.add(maybeCallbackObserver);
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            case 3:
                FeedFragment feedFragment = (FeedFragment) obj3;
                SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj2;
                FeedFragment.Companion companion2 = FeedFragment.Companion;
                Context requireContext = feedFragment.requireContext();
                requireContext.getClass();
                SubscriptionManager subscriptionManager = new SubscriptionManager(requireContext);
                int i5 = subscriptionEntity.serviceId;
                String str2 = subscriptionEntity.url;
                str2.getClass();
                new CompletableFromAction(new ExtractorHelper$$ExternalSyntheticLambda4(subscriptionManager, i5, str2), i3).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()).subscribe(new EmptyCompletableObserver());
                feedFragment.handleItemsErrors((List) obj);
                return;
            default:
                final BackupRestoreSettingsFragment backupRestoreSettingsFragment = (BackupRestoreSettingsFragment) obj3;
                final StoredFileHelper storedFileHelper = (StoredFileHelper) obj2;
                final Uri uri = (Uri) obj;
                int i6 = BackupRestoreSettingsFragment.$r8$clinit;
                try {
                    new ZipInputStream(new BufferedInputStream(new DataReader.AnonymousClass1(storedFileHelper.getStream()))).close();
                    try {
                        backupRestoreSettingsFragment.manager.ensureDbDirectoryExists();
                        ImportExportManager importExportManager = backupRestoreSettingsFragment.manager;
                        importExportManager.getClass();
                        BackupFileLocator backupFileLocator = importExportManager.fileLocator;
                        boolean extractFileFromZip = ZipHelper.extractFileFromZip(storedFileHelper, "newpipe.db", new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(backupFileLocator.db, 23));
                        if (extractFileFromZip) {
                            Files.deleteIfExists(backupFileLocator.dbJournal);
                            Files.deleteIfExists(backupFileLocator.dbWal);
                            Files.deleteIfExists(backupFileLocator.dbShm);
                        }
                        if (!extractFileFromZip) {
                            Toast.makeText(backupRestoreSettingsFragment.requireContext(), R.string.could_not_import_all_files, 1).show();
                        }
                        backupRestoreSettingsFragment.manager.getClass();
                        final boolean zipContainsFile = ZipHelper.zipContainsFile(storedFileHelper, "preferences.json");
                        if (!zipContainsFile) {
                            backupRestoreSettingsFragment.manager.getClass();
                            if (!ZipHelper.zipContainsFile(storedFileHelper, "newpipe.settings")) {
                                backupRestoreSettingsFragment.defaultPreferences.edit().putString(backupRestoreSettingsFragment.importExportDataPathKey, uri.toString()).apply();
                                SQLite.restartApp(backupRestoreSettingsFragment.requireActivity());
                                return;
                            }
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.requireContext());
                        builder.setTitle(R.string.import_settings);
                        String string = zipContainsFile ? null : backupRestoreSettingsFragment.requireContext().getString(R.string.import_settings_vulnerable_format);
                        AlertController.AlertParams alertParams = builder.P;
                        alertParams.mMessage = string;
                        alertParams.mOnDismissListener = new DialogInterface.OnDismissListener() { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda12
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface2) {
                                int i7 = BackupRestoreSettingsFragment.$r8$clinit;
                                BackupRestoreSettingsFragment backupRestoreSettingsFragment2 = BackupRestoreSettingsFragment.this;
                                backupRestoreSettingsFragment2.defaultPreferences.edit().putString(backupRestoreSettingsFragment2.importExportDataPathKey, uri.toString()).apply();
                                SQLite.restartApp(backupRestoreSettingsFragment2.requireActivity());
                            }
                        };
                        builder.setNegativeButton(R.string.cancel, new FeedFragment$$ExternalSyntheticLambda9(backupRestoreSettingsFragment, uri, 8)).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.settings.BackupRestoreSettingsFragment$$ExternalSyntheticLambda14
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface2, int i7) {
                                int i8 = BackupRestoreSettingsFragment.$r8$clinit;
                                dialogInterface2.dismiss();
                                BackupRestoreSettingsFragment backupRestoreSettingsFragment2 = BackupRestoreSettingsFragment.this;
                                Context requireContext2 = backupRestoreSettingsFragment2.requireContext();
                                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext2);
                                ImportExportManager importExportManager2 = backupRestoreSettingsFragment2.manager;
                                boolean z = zipContainsFile;
                                StoredFileHelper storedFileHelper2 = storedFileHelper;
                                try {
                                    if (z) {
                                        importExportManager2.getClass();
                                        ImportExportManager.loadJsonPrefs(defaultSharedPreferences, storedFileHelper2);
                                    } else {
                                        importExportManager2.getClass();
                                        ImportExportManager.loadSerializedPrefs(defaultSharedPreferences, storedFileHelper2);
                                    }
                                    String string2 = requireContext2.getString(R.string.disable_media_tunneling_key);
                                    String string3 = requireContext2.getString(R.string.disabled_media_tunneling_automatically_key);
                                    if (defaultSharedPreferences.getInt(string3, -1) == 1 && defaultSharedPreferences.getBoolean(string2, false)) {
                                        defaultSharedPreferences.edit().putInt(string3, -1).putBoolean(string2, false).apply();
                                        Options.Companion.setMediaTunneling(requireContext2);
                                    }
                                    backupRestoreSettingsFragment2.defaultPreferences.edit().putString(backupRestoreSettingsFragment2.importExportDataPathKey, uri.toString()).apply();
                                    SQLite.restartApp(backupRestoreSettingsFragment2.requireActivity());
                                } catch (JsonParserException e2) {
                                    e = e2;
                                    ErrorUtil.createNotification(backupRestoreSettingsFragment2.requireContext(), new ErrorInfo(e, UserAction.DATABASE_IMPORT_EXPORT, "Importing preferences", (Integer) null, 24));
                                } catch (IOException e3) {
                                    e = e3;
                                    ErrorUtil.createNotification(backupRestoreSettingsFragment2.requireContext(), new ErrorInfo(e, UserAction.DATABASE_IMPORT_EXPORT, "Importing preferences", (Integer) null, 24));
                                } catch (ClassNotFoundException e4) {
                                    e = e4;
                                    ErrorUtil.createNotification(backupRestoreSettingsFragment2.requireContext(), new ErrorInfo(e, UserAction.DATABASE_IMPORT_EXPORT, "Importing preferences", (Integer) null, 24));
                                }
                            }
                        }).show();
                        return;
                    } catch (Exception e2) {
                        ErrorInfo errorInfo = new ErrorInfo(e2, UserAction.DATABASE_IMPORT_EXPORT, "Importing database and settings", (Integer) null, 24);
                        ErrorUtil.Companion.getClass();
                        ErrorUtil.Companion.showSnackbar(backupRestoreSettingsFragment, errorInfo);
                        return;
                    }
                } catch (IOException unused2) {
                    Toast.makeText(backupRestoreSettingsFragment.requireContext(), R.string.no_valid_zip_file, 0).show();
                    return;
                }
        }
    }
}
