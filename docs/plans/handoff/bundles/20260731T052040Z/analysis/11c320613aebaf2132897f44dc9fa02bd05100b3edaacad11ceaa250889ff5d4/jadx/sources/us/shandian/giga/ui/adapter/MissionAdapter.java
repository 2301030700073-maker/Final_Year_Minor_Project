package us.shandian.giga.ui.adapter;

import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCallable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import okhttp3.Cookie;
import okio.Options;
import okio.PriorityQueue;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.player.ui.MainPlayerUi$$ExternalSyntheticLambda11;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.text.TextLinkifier$$ExternalSyntheticLambda1;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.DownloadMission$$ExternalSyntheticLambda0;
import us.shandian.giga.get.FinishedMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.get.MissionRecoveryInfo;
import us.shandian.giga.service.DownloadManager;
import us.shandian.giga.service.DownloadManager.MissionIterator;
import us.shandian.giga.ui.adapter.MissionAdapter;
import us.shandian.giga.ui.common.Deleter;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda0;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;
import us.shandian.giga.ui.common.ProgressDrawable;
import us.shandian.giga.ui.fragment.MissionsFragment;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MissionAdapter extends RecyclerView.Adapter implements Handler.Callback {
    public MenuItem mClear;
    public final Context mContext;
    public final Deleter mDeleter;
    public final DownloadManager mDownloadManager;
    public final View mEmptyMessage;
    public final Handler mHandler;
    public final ArrayList mHidden;
    public final LayoutInflater mInflater;
    public final DownloadManager.MissionIterator mIterator;
    public MenuItem mPauseButton;
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 mRecover;
    public Snackbar mSnackbar;
    public MenuItem mStartButton;
    public final View mView;
    public final ArrayList mPendingDownloadsItems = new ArrayList();
    public final CompositeDisposable compositeDisposable = new CompositeDisposable();
    public int mLayout = R.layout.mission_item;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ViewHolderHeader extends RecyclerView.ViewHolder {
        public TextView header;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ViewHolderItem extends RecyclerView.ViewHolder {
        public final MenuItem cancel;
        public final MenuItem checksum;
        public final TextView date;
        public final MenuItem delete;
        public final ImageView icon;
        public PriorityQueue item;
        public double lastDone;
        public final float[] lastSpeed;
        public int lastSpeedIdx;
        public long lastTimestamp;
        public final TextView name;
        public final MenuItem open;
        public final MenuItem pause;
        public final PopupMenu popupMenu;
        public final ProgressDrawable progress;
        public final MenuItem queue;
        public final MenuItem retry;
        public final MenuItem showError;
        public final TextView size;
        public final MenuItem source;
        public final MenuItem start;
        public final TextView status;

        public ViewHolderItem(View view) {
            super(view);
            this.lastTimestamp = -1L;
            this.lastSpeed = new float[3];
            ProgressDrawable progressDrawable = new ProgressDrawable();
            progressDrawable.mMarqueeLine = null;
            progressDrawable.mMarqueeProgress = 0.0f;
            final int i = 0;
            progressDrawable.mMarqueeSize = 0;
            progressDrawable.mMarqueeNext = 0L;
            this.progress = progressDrawable;
            this.itemView.findViewById(R.id.item_bkg).setBackground(progressDrawable);
            this.status = (TextView) this.itemView.findViewById(R.id.item_status);
            TextView textView = (TextView) this.itemView.findViewById(R.id.item_name);
            this.name = textView;
            this.icon = (ImageView) this.itemView.findViewById(R.id.item_icon);
            this.size = (TextView) this.itemView.findViewById(R.id.item_size);
            this.date = (TextView) this.itemView.findViewById(R.id.item_date);
            final int i2 = 1;
            textView.setSelected(true);
            ImageView imageView = (ImageView) this.itemView.findViewById(R.id.item_more);
            PopupMenu popupMenu = new PopupMenu(MissionAdapter.this.mContext, imageView);
            popupMenu.inflate(R.menu.mission);
            popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: us.shandian.giga.ui.adapter.MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3
                @Override // android.widget.PopupMenu.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    final int i3;
                    int i4;
                    UserAction userAction = UserAction.DOWNLOAD_FAILED;
                    MissionAdapter.ViewHolderItem viewHolderItem = MissionAdapter.ViewHolderItem.this;
                    final MissionAdapter missionAdapter = MissionAdapter.this;
                    int i5 = 1;
                    if (viewHolderItem.item != null) {
                        int itemId = menuItem.getItemId();
                        Mission mission = (Mission) viewHolderItem.item.array;
                        Uri uri = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        r5 = null;
                        String str = null;
                        final DownloadMission downloadMission = mission instanceof DownloadMission ? (DownloadMission) mission : null;
                        if (downloadMission != null) {
                            if (itemId == R.id.start) {
                                viewHolderItem.status.setText("--.-%");
                                missionAdapter.mDownloadManager.getClass();
                                if (!downloadMission.running) {
                                    downloadMission.start();
                                    return true;
                                }
                            } else if (itemId == R.id.pause) {
                                missionAdapter.mDownloadManager.getClass();
                                if (downloadMission.running) {
                                    downloadMission.enqueued = false;
                                    new Thread(new DownloadMission$$ExternalSyntheticLambda0(downloadMission, 1)).start();
                                    downloadMission.pause();
                                    return true;
                                }
                            } else if (itemId == R.id.error_message_view) {
                                int i6 = downloadMission.errCode;
                                if (i6 != -1) {
                                    if (i6 == 204) {
                                        i3 = R.string.error_http_no_content;
                                    } else if (i6 == 404) {
                                        i3 = R.string.error_http_not_found;
                                    } else if (i6 != 416) {
                                        i3 = R.string.general_error;
                                        switch (i6) {
                                            case 1000:
                                                i3 = R.string.error_path_creation;
                                                break;
                                            case 1001:
                                                i3 = R.string.error_file_creation;
                                                break;
                                            case 1002:
                                                if (downloadMission.errObject == null) {
                                                    i3 = R.string.msg_error;
                                                    break;
                                                } else {
                                                    missionAdapter.showError(downloadMission, userAction, R.string.general_error);
                                                    return true;
                                                }
                                            case 1003:
                                                i3 = R.string.permission_denied;
                                                break;
                                            case 1004:
                                                i3 = R.string.error_ssl_exception;
                                                break;
                                            case AnalyticsListener.EVENT_UPSTREAM_DISCARDED /* 1005 */:
                                                i3 = R.string.error_unknown_host;
                                                break;
                                            case AnalyticsListener.EVENT_BANDWIDTH_ESTIMATE /* 1006 */:
                                                i3 = R.string.error_connect_host;
                                                break;
                                            case AnalyticsListener.EVENT_AUDIO_ENABLED /* 1007 */:
                                            case AnalyticsListener.EVENT_AUDIO_INPUT_FORMAT_CHANGED /* 1009 */:
                                                missionAdapter.showError(downloadMission, UserAction.DOWNLOAD_POSTPROCESSING, R.string.error_postprocessing_failed);
                                                return true;
                                            case AnalyticsListener.EVENT_AUDIO_DECODER_INITIALIZED /* 1008 */:
                                                i3 = R.string.error_postprocessing_stopped;
                                                break;
                                            case AnalyticsListener.EVENT_AUDIO_POSITION_ADVANCING /* 1010 */:
                                                i3 = R.string.error_insufficient_storage_left;
                                                break;
                                            case AnalyticsListener.EVENT_AUDIO_UNDERRUN /* 1011 */:
                                                i3 = R.string.error_progress_lost;
                                                break;
                                            case AnalyticsListener.EVENT_AUDIO_DECODER_RELEASED /* 1012 */:
                                                i3 = R.string.error_timeout;
                                                break;
                                            case AnalyticsListener.EVENT_AUDIO_DISABLED /* 1013 */:
                                                i3 = R.string.error_download_resource_gone;
                                                break;
                                            default:
                                                if (i6 >= 100 && i6 < 600) {
                                                    str = "HTTP " + downloadMission.errCode;
                                                    break;
                                                } else {
                                                    if (downloadMission.errObject != null) {
                                                        missionAdapter.showError(downloadMission, userAction, R.string.general_error);
                                                        return true;
                                                    }
                                                    str = "(not_decelerated_error_code)";
                                                    break;
                                                }
                                        }
                                    } else {
                                        i3 = R.string.error_http_unsupported_range;
                                    }
                                    AlertDialog.Builder builder = new AlertDialog.Builder(missionAdapter.mContext);
                                    if (str != null) {
                                        builder.P.mMessage = str;
                                    } else {
                                        builder.setMessage(i3);
                                    }
                                    if (downloadMission.errObject != null && ((i4 = downloadMission.errCode) < 100 || i4 >= 600)) {
                                        builder.setPositiveButton(R.string.error_report_title, new DialogInterface.OnClickListener() { // from class: us.shandian.giga.ui.adapter.MissionAdapter$$ExternalSyntheticLambda5
                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i7) {
                                                int i8 = i3;
                                                MissionAdapter.this.showError(downloadMission, UserAction.DOWNLOAD_FAILED, i8);
                                            }
                                        });
                                    }
                                    builder.setNegativeButton(R.string.ok, new NavigationHelper$$ExternalSyntheticLambda5(7)).setTitle(downloadMission.storage.getName()).show();
                                }
                            } else {
                                if (itemId == R.id.queue) {
                                    boolean z = !viewHolderItem.queue.isChecked();
                                    viewHolderItem.queue.setChecked(z);
                                    downloadMission.enqueued = z;
                                    new Thread(new DownloadMission$$ExternalSyntheticLambda0(downloadMission, 1)).start();
                                    missionAdapter.updateProgress(viewHolderItem);
                                    return true;
                                }
                                if (itemId == R.id.retry) {
                                    if (downloadMission.isPsRunning()) {
                                        downloadMission.psState = 1;
                                        downloadMission.errCode = -1;
                                        downloadMission.threads[0].interrupt();
                                        return true;
                                    }
                                    missionAdapter.mDownloadManager.tryRecover(downloadMission);
                                    if (!downloadMission.storage.isInvalid()) {
                                        missionAdapter.recoverMission(downloadMission);
                                        return true;
                                    }
                                    MissionsFragment missionsFragment = (MissionsFragment) missionAdapter.mRecover.f$0;
                                    missionsFragment.unsafeMissionTarget = downloadMission;
                                    if (!Options.Companion.useStorageAccessFramework(missionsFragment.mContext)) {
                                        uri = Uri.parse((MimeTypes.BASE_TYPE_AUDIO.equals(downloadMission.storage.getType()) ? new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_MUSIC) : new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_MOVIES)).getAbsolutePath());
                                    }
                                    Cookie.Companion.launchSafe(missionsFragment.requestDownloadSaveAsLauncher, StoredFileHelper.getNewPicker(missionsFragment.mContext, downloadMission.storage.getName(), downloadMission.storage.getType(), uri), "MissionsFragment", missionsFragment.mContext);
                                    return true;
                                }
                                if (itemId == R.id.cancel) {
                                    downloadMission.psState = 1;
                                    downloadMission.errCode = AnalyticsListener.EVENT_AUDIO_ENABLED;
                                    downloadMission.threads[0].interrupt();
                                    return false;
                                }
                            }
                        }
                        if (itemId == R.id.menu_item_share) {
                            Context context = missionAdapter.mContext;
                            if (!mission.storage.existsAsFile()) {
                                Toast.makeText(missionAdapter.mContext, R.string.missing_file, 0).show();
                                return true;
                            }
                            Intent intent = new Intent("android.intent.action.SEND");
                            intent.setType(MissionAdapter.resolveMimeType(mission));
                            intent.putExtra("android.intent.extra.STREAM", missionAdapter.resolveShareableUri(mission));
                            intent.addFlags(1);
                            Intent createChooser = Intent.createChooser(intent, null);
                            if (Build.VERSION.SDK_INT <= 27) {
                                createChooser.putExtra("android.intent.extra.TITLE", context.getString(R.string.share_dialog_title));
                            }
                            createChooser.addFlags(268435456);
                            createChooser.addFlags(1);
                            context.startActivity(createChooser);
                            return true;
                        }
                        if (itemId == R.id.delete) {
                            missionAdapter.mDeleter.append(mission, true);
                            missionAdapter.applyChanges();
                            missionAdapter.checkMasterButtonsVisibility();
                            return true;
                        }
                        if (itemId == R.id.delete_entry) {
                            missionAdapter.mDeleter.append(mission, false);
                            missionAdapter.applyChanges();
                            missionAdapter.checkMasterButtonsVisibility();
                            return true;
                        }
                        if (itemId != R.id.md5 && itemId != R.id.sha1) {
                            if (itemId != R.id.source) {
                                return false;
                            }
                            try {
                                Context context2 = missionAdapter.mContext;
                                String str2 = mission.source;
                                Intent intentByLink = SQLite.getIntentByLink(context2, Utility.getServiceByUrl(str2), str2);
                                intentByLink.addFlags(16777216);
                                missionAdapter.mContext.startActivity(intentByLink);
                                return true;
                            } catch (Exception e) {
                                Log.w("MissionAdapter", "Selected item has a invalid source", e);
                                return true;
                            }
                        }
                        StoredFileHelper storedFileHelper = mission.storage;
                        boolean existsAsFile = storedFileHelper.existsAsFile();
                        Context context3 = missionAdapter.mContext;
                        if (!existsAsFile) {
                            Toast.makeText(context3, R.string.missing_file, 0).show();
                            missionAdapter.mDeleter.append((Mission) viewHolderItem.item.array, true);
                            missionAdapter.applyChanges();
                            return true;
                        }
                        NotificationManager notificationManager = (NotificationManager) context3.getSystemService(NotificationManager.class);
                        Context context4 = missionAdapter.mContext;
                        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context4, context4.getString(R.string.hash_channel_id));
                        notificationCompat$Builder.mPriority = 1;
                        notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
                        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(missionAdapter.mContext.getString(R.string.msg_calculating_hash));
                        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(missionAdapter.mContext.getString(R.string.msg_wait));
                        notificationCompat$Builder.setProgress(0, 0, true);
                        notificationCompat$Builder.setFlag(2, true);
                        notificationManager.notify(123790, notificationCompat$Builder.build());
                        CompositeDisposable compositeDisposable = missionAdapter.compositeDisposable;
                        ObservableObserveOn observeOn = new ObservableFromCallable(new IdGenerator$$ExternalSyntheticLambda0(storedFileHelper, itemId, 2)).subscribeOn(Schedulers.COMPUTATION).observeOn(AndroidSchedulers.mainThread());
                        LambdaObserver lambdaObserver = new LambdaObserver(new TextLinkifier$$ExternalSyntheticLambda1(missionAdapter, notificationManager, i5), Functions.ON_ERROR_MISSING);
                        observeOn.subscribe(lambdaObserver);
                        compositeDisposable.add(lambdaObserver);
                        return true;
                    }
                    return true;
                }
            });
            this.popupMenu = popupMenu;
            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: us.shandian.giga.ui.adapter.MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0
                public final /* synthetic */ MissionAdapter.ViewHolderItem f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i3 = i;
                    MissionAdapter.ViewHolderItem viewHolderItem = this.f$0;
                    switch (i3) {
                        case 0:
                            viewHolderItem.showPopupMenu();
                            break;
                        default:
                            Mission mission = (Mission) viewHolderItem.item.array;
                            if (mission instanceof FinishedMission) {
                                MissionAdapter missionAdapter = MissionAdapter.this;
                                Context context = missionAdapter.mContext;
                                if (!mission.storage.existsAsFile()) {
                                    Toast.makeText(context, R.string.missing_file, 0).show();
                                    break;
                                } else {
                                    String resolveMimeType = MissionAdapter.resolveMimeType(mission);
                                    Intent intent = new Intent("android.intent.action.VIEW");
                                    intent.setDataAndType(missionAdapter.resolveShareableUri(mission), resolveMimeType);
                                    intent.addFlags(1);
                                    intent.addFlags(128);
                                    Intent createChooser = Intent.createChooser(intent, null);
                                    createChooser.addFlags(268435456);
                                    createChooser.addFlags(1);
                                    createChooser.addFlags(128);
                                    try {
                                        context.startActivity(createChooser);
                                        break;
                                    } catch (ActivityNotFoundException unused) {
                                        Toast.makeText(context, R.string.no_app_to_open_intent, 1).show();
                                        return;
                                    }
                                }
                            }
                            break;
                    }
                }
            });
            Menu menu = popupMenu.getMenu();
            this.retry = menu.findItem(R.id.retry);
            this.cancel = menu.findItem(R.id.cancel);
            this.start = menu.findItem(R.id.start);
            this.pause = menu.findItem(R.id.pause);
            this.open = menu.findItem(R.id.menu_item_share);
            this.queue = menu.findItem(R.id.queue);
            this.showError = menu.findItem(R.id.error_message_view);
            this.delete = menu.findItem(R.id.delete);
            this.source = menu.findItem(R.id.source);
            this.checksum = menu.findItem(R.id.checksum);
            this.itemView.setHapticFeedbackEnabled(true);
            this.itemView.setOnClickListener(new View.OnClickListener(this) { // from class: us.shandian.giga.ui.adapter.MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0
                public final /* synthetic */ MissionAdapter.ViewHolderItem f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i3 = i2;
                    MissionAdapter.ViewHolderItem viewHolderItem = this.f$0;
                    switch (i3) {
                        case 0:
                            viewHolderItem.showPopupMenu();
                            break;
                        default:
                            Mission mission = (Mission) viewHolderItem.item.array;
                            if (mission instanceof FinishedMission) {
                                MissionAdapter missionAdapter = MissionAdapter.this;
                                Context context = missionAdapter.mContext;
                                if (!mission.storage.existsAsFile()) {
                                    Toast.makeText(context, R.string.missing_file, 0).show();
                                    break;
                                } else {
                                    String resolveMimeType = MissionAdapter.resolveMimeType(mission);
                                    Intent intent = new Intent("android.intent.action.VIEW");
                                    intent.setDataAndType(missionAdapter.resolveShareableUri(mission), resolveMimeType);
                                    intent.addFlags(1);
                                    intent.addFlags(128);
                                    Intent createChooser = Intent.createChooser(intent, null);
                                    createChooser.addFlags(268435456);
                                    createChooser.addFlags(1);
                                    createChooser.addFlags(128);
                                    try {
                                        context.startActivity(createChooser);
                                        break;
                                    } catch (ActivityNotFoundException unused) {
                                        Toast.makeText(context, R.string.no_app_to_open_intent, 1).show();
                                        return;
                                    }
                                }
                            }
                            break;
                    }
                }
            });
            this.itemView.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, 5));
        }

        public final void showPopupMenu() {
            boolean z = false;
            this.retry.setVisible(false);
            this.cancel.setVisible(false);
            this.start.setVisible(false);
            this.pause.setVisible(false);
            this.open.setVisible(false);
            this.queue.setVisible(false);
            this.showError.setVisible(false);
            this.delete.setVisible(false);
            this.source.setVisible(false);
            this.checksum.setVisible(false);
            Mission mission = (Mission) this.item.array;
            DownloadMission downloadMission = mission instanceof DownloadMission ? (DownloadMission) mission : null;
            if (downloadMission != null) {
                StoredFileHelper storedFileHelper = downloadMission.storage;
                if (storedFileHelper == null || !storedFileHelper.existsAsFile()) {
                    this.retry.setVisible(true);
                    this.delete.setVisible(true);
                    this.showError.setVisible(true);
                } else if (downloadMission.isPsRunning()) {
                    int i = downloadMission.errCode;
                    if (i == 1009 || i == 1010) {
                        this.retry.setVisible(true);
                        this.cancel.setVisible(true);
                        this.showError.setVisible(true);
                    }
                } else if (downloadMission.running) {
                    this.pause.setVisible(true);
                } else {
                    if (downloadMission.errCode != -1) {
                        this.showError.setVisible(true);
                    }
                    this.queue.setChecked(downloadMission.enqueued);
                    this.delete.setVisible(true);
                    if (!downloadMission.isPsFailed() && downloadMission.urls.length > 0) {
                        z = true;
                    }
                    this.start.setVisible(z);
                    this.queue.setVisible(z);
                }
            } else {
                this.open.setVisible(true);
                this.delete.setVisible(true);
                this.checksum.setVisible(true);
            }
            String str = ((Mission) this.item.array).source;
            if (str != null && !str.isEmpty()) {
                this.source.setVisible(true);
            }
            this.popupMenu.show();
        }
    }

    public MissionAdapter(Context context, DownloadManager downloadManager, View view, View view2) {
        this.mContext = context;
        this.mDownloadManager = downloadManager;
        this.mInflater = LayoutInflater.from(context);
        Handler handler = new Handler(context.getMainLooper());
        this.mHandler = handler;
        this.mEmptyMessage = view;
        downloadManager.mSelfMissionsControl = true;
        DownloadManager.MissionIterator missionIterator = downloadManager.new MissionIterator();
        this.mIterator = missionIterator;
        this.mDeleter = new Deleter(view2, context, this, downloadManager, missionIterator, handler);
        this.mView = view2;
        this.mHidden = new ArrayList();
        int i = missionIterator.snapshot.size() > 0 ? 8 : 0;
        if (view.getVisibility() != i) {
            view.setVisibility(i);
        }
        onResume();
    }

    public static String resolveMimeType(Mission mission) {
        String lowerCase;
        String mimeTypeFromExtension;
        String type;
        if (!mission.storage.isInvalid() && (type = mission.storage.getType()) != null && type.length() > 0 && !type.equals("application/octet-stream")) {
            return type;
        }
        String name = mission.storage.getName();
        int indexOf = name.indexOf("?");
        if (indexOf > -1) {
            name = name.substring(0, indexOf);
        }
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf == -1) {
            lowerCase = null;
        } else {
            String substring = name.substring(lastIndexOf);
            int indexOf2 = substring.indexOf("%");
            if (indexOf2 > -1) {
                substring = substring.substring(0, indexOf2);
            }
            int indexOf3 = substring.indexOf("/");
            if (indexOf3 > -1) {
                substring = substring.substring(0, indexOf3);
            }
            lowerCase = substring.toLowerCase();
        }
        return (lowerCase == null || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase.substring(1))) == null) ? "*/*" : mimeTypeFromExtension;
    }

    public final void applyChanges() {
        DownloadManager.MissionIterator missionIterator = this.mIterator;
        missionIterator.current = missionIterator.getSpecialItems();
        DiffUtil.calculateDiff(missionIterator, true).dispatchUpdatesTo(new OpReorderer(this));
        missionIterator.snapshot = missionIterator.current;
        missionIterator.current = null;
        int i = missionIterator.snapshot.size() > 0 ? 8 : 0;
        View view = this.mEmptyMessage;
        if (view.getVisibility() != i) {
            view.setVisibility(i);
        }
        MenuItem menuItem = this.mClear;
        if (menuItem != null) {
            menuItem.setVisible(missionIterator.hasFinished);
        }
    }

    public final void checkMasterButtonsVisibility() {
        boolean z;
        boolean z2;
        DownloadManager.MissionIterator missionIterator = this.mIterator;
        synchronized (DownloadManager.this) {
            try {
                Iterator it = DownloadManager.this.mMissionsPending.iterator();
                z = false;
                z2 = false;
                while (it.hasNext()) {
                    DownloadMission downloadMission = (DownloadMission) it.next();
                    if (!missionIterator.hidden.contains(downloadMission) && !downloadMission.isCorrupt()) {
                        if (downloadMission.running) {
                            z = true;
                        } else {
                            z2 = true;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean[] zArr = {z, z2};
        Log.d("MissionAdapter", "checkMasterButtonsVisibility() running=" + zArr[0] + " paused=" + zArr[1]);
        MenuItem menuItem = this.mPauseButton;
        boolean z3 = zArr[0];
        if (menuItem.isVisible() != z3) {
            menuItem.setVisible(z3);
        }
        MenuItem menuItem2 = this.mStartButton;
        boolean z4 = zArr[1];
        if (menuItem2.isVisible() != z4) {
            menuItem2.setVisible(z4);
        }
    }

    public final void clearFinishedDownloads(boolean z) {
        if (!z || !this.mIterator.hasFinished || !this.mHidden.isEmpty()) {
            if (z) {
                return;
            }
            DownloadManager downloadManager = this.mDownloadManager;
            synchronized (downloadManager) {
                try {
                    Iterator it = downloadManager.mMissionsFinished.iterator();
                    while (it.hasNext()) {
                        downloadManager.mFinishedMissionStore.deleteMission((FinishedMission) it.next());
                    }
                    downloadManager.mMissionsFinished.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            applyChanges();
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.mIterator.snapshot.size(); i2++) {
            FinishedMission finishedMission = ((Mission) this.mIterator.getItem(i2).array) instanceof FinishedMission ? (FinishedMission) ((Mission) this.mIterator.getItem(i2).array) : null;
            if (finishedMission != null) {
                this.mIterator.hidden.add(finishedMission);
                this.mHidden.add(finishedMission);
            }
        }
        applyChanges();
        Context context = this.mContext;
        long size = this.mHidden.size();
        Snackbar make = Snackbar.make(this.mView, Localization.getQuantity(context, R.plurals.deleted_downloads_toast, 0, size, Localization.shortCount(context, size)), -2);
        this.mSnackbar = make;
        make.setAction(make.context.getText(R.string.undo), new Deleter$$ExternalSyntheticLambda4(this, 10));
        ((SnackbarContentLayout) this.mSnackbar.view.getChildAt(0)).getActionView().setTextColor(-256);
        this.mSnackbar.show();
        OperationKt.postDelayed(this.mHandler, new MissionAdapter$$ExternalSyntheticLambda1(this, i), "deleteFinishedDownloads", 5000L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.mIterator.snapshot.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        DownloadManager.MissionIterator missionIterator = this.mIterator;
        Object obj = missionIterator.snapshot.get(i);
        if (obj == missionIterator.PENDING) {
            return 1;
        }
        return obj == missionIterator.FINISHED ? 2 : 0;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        ViewHolderItem viewHolderItem;
        if (this.mStartButton != null && this.mPauseButton != null) {
            checkMasterButtonsVisibility();
        }
        int i = message.what;
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            return false;
        }
        Object obj = message.obj;
        Iterator it = this.mPendingDownloadsItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                viewHolderItem = null;
                break;
            }
            viewHolderItem = (ViewHolderItem) it.next();
            if (((Mission) viewHolderItem.item.array) == obj) {
                break;
            }
        }
        if (viewHolderItem == null) {
            return false;
        }
        int i2 = message.what;
        if (i2 == 2 || i2 == 4) {
            applyChanges();
            return true;
        }
        updateProgress(viewHolderItem);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00d9  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r8, int r9) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.ui.adapter.MissionAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflater = this.mInflater;
        if (i != 1 && i != 2) {
            return new ViewHolderItem(layoutInflater.inflate(this.mLayout, viewGroup, false));
        }
        ViewHolderHeader viewHolderHeader = new ViewHolderHeader(layoutInflater.inflate(R.layout.missions_header, viewGroup, false));
        viewHolderHeader.header = (TextView) viewHolderHeader.itemView.findViewById(R.id.item_name);
        return viewHolderHeader;
    }

    public final void onResume() {
        Deleter deleter = this.mDeleter;
        if (!deleter.running) {
            OperationKt.postDelayed(deleter.mHandler, new Deleter$$ExternalSyntheticLambda0(deleter, 0), "show", 400L);
        }
        OperationKt.postDelayed(this.mHandler, new MissionAdapter$$ExternalSyntheticLambda1(this, 1), "updater", 0L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
        if (viewHolder instanceof ViewHolderHeader) {
            return;
        }
        ViewHolderItem viewHolderItem = (ViewHolderItem) viewHolder;
        if (((Mission) viewHolderItem.item.array) instanceof DownloadMission) {
            ArrayList arrayList = this.mPendingDownloadsItems;
            arrayList.remove(viewHolderItem);
            if (arrayList.size() < 1) {
                checkMasterButtonsVisibility();
            }
        }
        viewHolderItem.popupMenu.dismiss();
        viewHolderItem.item = null;
        viewHolderItem.lastTimestamp = -1L;
        viewHolderItem.lastSpeedIdx = -1;
    }

    public final void recoverMission(DownloadMission downloadMission) {
        ViewHolderItem viewHolderItem;
        Iterator it = this.mPendingDownloadsItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                viewHolderItem = null;
                break;
            } else {
                viewHolderItem = (ViewHolderItem) it.next();
                if (((Mission) viewHolderItem.item.array) == downloadMission) {
                    break;
                }
            }
        }
        if (viewHolderItem == null) {
            return;
        }
        downloadMission.errObject = null;
        downloadMission.resetState(-1, true, false);
        viewHolderItem.status.setText("--.-%");
        viewHolderItem.size.setText(Utility.formatBytes(downloadMission.getLength()));
        viewHolderItem.progress.setMarquee(true);
        this.mDownloadManager.getClass();
        if (downloadMission.running) {
            return;
        }
        downloadMission.start();
    }

    public final Uri resolveShareableUri(Mission mission) {
        StoredFileHelper storedFileHelper = mission.storage;
        storedFileHelper.assertValid();
        if (storedFileHelper.docFile != null) {
            return mission.storage.getUri();
        }
        return FileProvider.getUriForFile(this.mContext, "org.schabi.newpipe.provider", new File(URI.create(mission.storage.getUri().toString())));
    }

    public final void showError(DownloadMission downloadMission, UserAction userAction, int i) {
        Integer num;
        StringBuilder sb = new StringBuilder(256);
        sb.append(downloadMission.source);
        sb.append(" [");
        MissionRecoveryInfo[] missionRecoveryInfoArr = downloadMission.recoveryInfo;
        if (missionRecoveryInfoArr != null) {
            for (MissionRecoveryInfo missionRecoveryInfo : missionRecoveryInfoArr) {
                sb.append(' ');
                sb.append(missionRecoveryInfo.toString());
                sb.append(' ');
            }
        }
        sb.append("]");
        try {
            num = Integer.valueOf(Utility.getServiceByUrl(downloadMission.source).serviceId);
        } catch (Exception unused) {
            num = null;
        }
        Integer num2 = num;
        ErrorInfo.Companion companion = ErrorInfo.Companion;
        Exception exc = downloadMission.errObject;
        companion.getClass();
        exc.getClass();
        ErrorUtil.createNotification(this.mContext, new ErrorInfo(new String[]{ResultKt.stackTraceToString(exc)}, userAction, sb.toString(), num2, i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        if (r13.isAlive() != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateProgress(us.shandian.giga.ui.adapter.MissionAdapter.ViewHolderItem r30) {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.ui.adapter.MissionAdapter.updateProgress(us.shandian.giga.ui.adapter.MissionAdapter$ViewHolderItem):void");
    }
}
