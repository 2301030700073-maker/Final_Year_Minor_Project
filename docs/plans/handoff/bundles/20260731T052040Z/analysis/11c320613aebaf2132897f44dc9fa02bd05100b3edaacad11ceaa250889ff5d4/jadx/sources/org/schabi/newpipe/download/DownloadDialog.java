package org.schabi.newpipe.download;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.provider.DocumentsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.documentfile.provider.TreeDocumentFile;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.work.OperationKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.livefront.bridge.Bridge;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.util.DesugarCollections;
import j$.util.Optional;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.ranges.RangesKt;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.koin.core.logger.Logger;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DownloadDialogBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.player.PlayQueueActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.streams.io.SharpStream;
import org.schabi.newpipe.streams.io.StoredDirectoryHelper;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.AudioTrackAdapter;
import org.schabi.newpipe.util.FilePickerActivityHelper;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.SecondaryStreamHelper;
import org.schabi.newpipe.util.SimpleOnSeekBarChangeListener;
import org.schabi.newpipe.util.StreamItemAdapter;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.get.MissionRecoveryInfo;
import us.shandian.giga.service.DownloadManager;
import us.shandian.giga.service.DownloadManagerService;
import us.shandian.giga.ui.adapter.MissionAdapter;
import us.shandian.giga.ui.fragment.MissionsFragment;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DownloadDialog extends DialogFragment implements RadioGroup.OnCheckedChangeListener, AdapterView.OnItemSelectedListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean askForSavePath;
    public StreamItemAdapter audioStreamsAdapter;
    public AudioTrackAdapter audioTrackAdapter;
    StreamInfo currentInfo;
    public DownloadDialogBinding dialogBinding;
    public String filenameTmp;
    public String mimeTmp;
    public SharedPreferences prefs;
    public final ActivityResultLauncher requestDownloadPickAudioFolderLauncher;
    public final ActivityResultLauncher requestDownloadPickVideoFolderLauncher;
    public final ActivityResultLauncher requestDownloadSaveAsLauncher;
    int selectedAudioTrackIndex;
    int selectedVideoIndex;
    public StreamItemAdapter subtitleStreamsAdapter;
    public StreamItemAdapter videoStreamsAdapter;
    AudioTrackAdapter.AudioTracksWrapper wrappedAudioTracks;
    StreamItemAdapter.StreamInfoWrapper wrappedSubtitleStreams;
    StreamItemAdapter.StreamInfoWrapper wrappedVideoStreams;
    int selectedAudioIndex = 0;
    int selectedSubtitleIndex = 0;
    public StoredDirectoryHelper mainStorageAudio = null;
    public StoredDirectoryHelper mainStorageVideo = null;
    public DownloadManager downloadManager = null;
    public MenuItem okButton = null;
    public Context context = null;
    public final CompositeDisposable disposables = new CompositeDisposable();

    public static void $r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(DownloadDialog downloadDialog, ActivityResult activityResult) {
        int i = activityResult.resultCode;
        Intent intent = activityResult.data;
        if (i != -1) {
            return;
        }
        if (intent == null || intent.getData() == null) {
            downloadDialog.showFailedDialog(R.string.general_error);
            return;
        }
        if (FilePickerActivityHelper.isOwnFileUri(downloadDialog.context, intent.getData())) {
            File fileForUri = RangesKt.getFileForUri(intent.getData());
            downloadDialog.checkSelectedDownload(null, Uri.fromFile(fileForUri), fileForUri.getName(), "application/octet-stream");
            return;
        }
        Context context = downloadDialog.context;
        Uri data = intent.getData();
        Uri data2 = intent.getData();
        String queryForString = RangesKt.queryForString(context, data, "_display_name");
        String queryForString2 = RangesKt.queryForString(context, data, "mime_type");
        if ("vnd.android.document/directory".equals(queryForString2)) {
            queryForString2 = null;
        }
        downloadDialog.checkSelectedDownload(null, data2, queryForString, queryForString2);
    }

    static {
        int i = MainActivity.$r8$clinit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DownloadDialog(Context context, StreamInfo streamInfo) {
        int i = 3;
        FragmentManager.FragmentIntentSenderContract fragmentIntentSenderContract = new FragmentManager.FragmentIntentSenderContract(i);
        final Object[] objArr = 0 == true ? 1 : 0;
        this.requestDownloadSaveAsLauncher = registerForActivityResult(fragmentIntentSenderContract, new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i2 = objArr;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i2) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i3 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
        final int i2 = 1;
        this.requestDownloadPickAudioFolderLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(i), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i2;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i3 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
        final int i3 = 2;
        this.requestDownloadPickVideoFolderLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(i), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i3;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i32 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
        this.currentInfo = streamInfo;
        int i4 = 24;
        List groupedAudioStreams = ListHelper.getGroupedAudioStreams(context, ListHelper.getFilteredStreamList(streamInfo.getAudioStreams(), new Player$$ExternalSyntheticLambda48(i4)));
        this.wrappedAudioTracks = new AudioTrackAdapter.AudioTracksWrapper(context, groupedAudioStreams);
        this.selectedAudioTrackIndex = ListHelper.getDefaultAudioTrackGroup(context, groupedAudioStreams);
        ArrayList sortedStreamVideosList = ListHelper.getSortedStreamVideosList(context, ListHelper.getFilteredStreamList(streamInfo.getVideoStreams(), new Player$$ExternalSyntheticLambda48(i4)), ListHelper.getFilteredStreamList(streamInfo.getVideoOnlyStreams(), new Player$$ExternalSyntheticLambda48(i4)), this.wrappedAudioTracks.size() > 1);
        this.wrappedVideoStreams = new StreamItemAdapter.StreamInfoWrapper(context, sortedStreamVideosList);
        this.wrappedSubtitleStreams = new StreamItemAdapter.StreamInfoWrapper(context, ListHelper.getFilteredStreamList(streamInfo.getSubtitles(), new Player$$ExternalSyntheticLambda48(i4)));
        this.selectedVideoIndex = ListHelper.getDefaultResolutionWithDefaultFormat(context, ListHelper.computeDefaultResolution(context, R.string.default_resolution_key, R.string.default_resolution_value), sortedStreamVideosList);
    }

    public final void checkSelectedDownload(final StoredDirectoryHelper storedDirectoryHelper, final Uri uri, final String str, final String str2) {
        DownloadMission downloadMission;
        int i;
        int i2;
        boolean z;
        int i3;
        try {
            final StoredFileHelper storedFileHelper = storedDirectoryHelper == null ? new StoredFileHelper(this.context, (Uri) null, uri, "") : uri == null ? new StoredFileHelper(storedDirectoryHelper.getUri(), str, str2, storedDirectoryHelper.tag) : new StoredFileHelper(this.context, storedDirectoryHelper.getUri(), uri, storedDirectoryHelper.tag);
            DownloadManager downloadManager = this.downloadManager;
            synchronized (downloadManager) {
                try {
                    Iterator it = downloadManager.mMissionsPending.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            downloadMission = null;
                            break;
                        } else {
                            downloadMission = (DownloadMission) it.next();
                            if (downloadMission.storage.equals(storedFileHelper)) {
                                break;
                            }
                        }
                    }
                    i = 2;
                    i2 = 4;
                    z = true;
                    if (downloadMission == null) {
                        if (downloadManager.getFinishedMissionIndex(storedFileHelper) < 0) {
                            i2 = 1;
                        }
                    } else if (!downloadMission.isFinished()) {
                        i2 = downloadMission.running ? 3 : 2;
                    }
                } finally {
                }
            }
            int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i2);
            int i4 = R.string.overwrite;
            if (ordinal != 0) {
                if (ordinal == 1) {
                    i3 = R.string.download_already_pending;
                } else if (ordinal == 2) {
                    i4 = R.string.generate_unique_name;
                    i3 = R.string.download_already_running;
                } else if (ordinal != 3) {
                    return;
                } else {
                    i3 = R.string.overwrite_finished_warning;
                }
            } else {
                if (storedDirectoryHelper == null) {
                    if (storedFileHelper.existsAsFile() || storedFileHelper.create()) {
                        continueSelectedDownload(storedFileHelper);
                        return;
                    } else {
                        showFailedDialog(R.string.error_file_creation);
                        return;
                    }
                }
                if (uri == null) {
                    Path path = storedDirectoryHelper.ioTree;
                    TreeDocumentFile treeDocumentFile = storedDirectoryHelper.docTree;
                    if (treeDocumentFile == null) {
                        try {
                            Files.createDirectories(path, new FileAttribute[0]);
                        } catch (IOException e) {
                            Log.e("StoredDirectoryHelper", "Error while creating directories at " + path, e);
                        }
                        z = Files.exists(path, new LinkOption[0]);
                    } else if (!treeDocumentFile.exists()) {
                        try {
                            String name = treeDocumentFile.getName();
                            while (true) {
                                Logger logger = (Logger) treeDocumentFile.level;
                                if (logger == null || name == null) {
                                    break;
                                } else if (!logger.exists()) {
                                    logger.createDirectory(name);
                                    name = logger.getName();
                                }
                            }
                        } catch (Exception unused) {
                        }
                        z = false;
                    }
                    if (!z) {
                        showFailedDialog(R.string.error_path_creation);
                        return;
                    }
                    StoredFileHelper createFile = storedDirectoryHelper.createFile(str, str2, false);
                    if (createFile == null || !createFile.canWrite()) {
                        showFailedDialog(R.string.error_file_creation);
                        return;
                    } else {
                        continueSelectedDownload(createFile);
                        return;
                    }
                }
                i3 = R.string.overwrite_unrelated_warning;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setTitle(R.string.download_dialog_title);
            builder.setMessage(i3);
            AlertDialog.Builder negativeButton = builder.setNegativeButton(R.string.cancel, null);
            if (storedDirectoryHelper != null) {
                final int i5 = i2;
                negativeButton.setPositiveButton(i4, new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda13
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v21, types: [java.lang.Object, java.lang.String] */
                    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.String] */
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        StoredFileHelper createFile2;
                        int i7 = DownloadDialog.$r8$clinit;
                        dialogInterface.dismiss();
                        int ordinal2 = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i5);
                        DownloadDialog downloadDialog = DownloadDialog.this;
                        StoredDirectoryHelper storedDirectoryHelper2 = storedDirectoryHelper;
                        String str3 = str;
                        String str4 = str2;
                        StoredFileHelper storedFileHelper2 = null;
                        if (ordinal2 != 0) {
                            if (ordinal2 != 1) {
                                if (ordinal2 == 2) {
                                    Path path2 = storedDirectoryHelper2.ioTree;
                                    ArrayList arrayList = new ArrayList();
                                    int lastIndexOf = str3.lastIndexOf(46);
                                    String[] strArr = (lastIndexOf < 0 || lastIndexOf == str3.length() - 1) ? new String[]{str3, ""} : new String[]{str3.substring(0, lastIndexOf), str3.substring(lastIndexOf)};
                                    String lowerCase = strArr[0].toLowerCase();
                                    TreeDocumentFile treeDocumentFile2 = storedDirectoryHelper2.docTree;
                                    if (treeDocumentFile2 == null) {
                                        try {
                                            Stream<Path> list = Files.list(path2);
                                            try {
                                                arrayList.addAll((Collection) list.map(new ListHelper$$ExternalSyntheticLambda0(22)).filter(new NewPipe$$ExternalSyntheticLambda2(lowerCase, 12)).collect(Collectors.toList()));
                                                list.close();
                                            } finally {
                                            }
                                        } catch (IOException e2) {
                                            Log.e("StoredDirectoryHelper", "Exception while traversing " + path2, e2);
                                        }
                                    } else {
                                        Uri uri2 = treeDocumentFile2.mUri;
                                        Cursor query = storedDirectoryHelper2.context.getContentResolver().query(DocumentsContract.buildChildDocumentsUriUsingTree(uri2, DocumentsContract.getDocumentId(uri2)), new String[]{"_display_name"}, "(LOWER(_display_name) LIKE ?%", new String[]{lowerCase}, null);
                                        if (query != null) {
                                            while (query.moveToNext()) {
                                                try {
                                                    String string = query.getString(0);
                                                    if (!Utils.isNullOrEmpty(string)) {
                                                        String lowerCase2 = string.toLowerCase();
                                                        if (lowerCase2.startsWith(lowerCase)) {
                                                            arrayList.add(lowerCase2);
                                                        }
                                                    }
                                                } finally {
                                                }
                                            }
                                        }
                                        if (query != null) {
                                            query.close();
                                        }
                                    }
                                    if (!arrayList.isEmpty()) {
                                        ?? lowerCase3 = str3.toLowerCase();
                                        Iterator it2 = arrayList.iterator();
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                storedFileHelper2 = lowerCase3;
                                                break;
                                            } else if (((String) it2.next()).equals(lowerCase3)) {
                                                break;
                                            }
                                        }
                                        if (storedFileHelper2 == null) {
                                            Collections.sort(arrayList, new LayoutNode$$ExternalSyntheticLambda3(11));
                                            int i8 = 1;
                                            while (true) {
                                                if (i8 >= 1000) {
                                                    createFile2 = storedDirectoryHelper2.createFile(String.valueOf(System.currentTimeMillis()).concat(strArr[1]), str4, false);
                                                    break;
                                                }
                                                if (Collections.binarySearch(arrayList, lowerCase + "(" + i8 + ")" + strArr[1]) < 0) {
                                                    createFile2 = storedDirectoryHelper2.createFile(strArr[0] + "(" + i8 + ")" + strArr[1], str4, true);
                                                    break;
                                                }
                                                i8++;
                                            }
                                        } else {
                                            createFile2 = storedDirectoryHelper2.createFile(str3, str4, true);
                                        }
                                    } else {
                                        createFile2 = storedDirectoryHelper2.createFile(str3, str4, true);
                                    }
                                    if (createFile2 == null) {
                                        downloadDialog.showFailedDialog(R.string.error_file_creation);
                                        return;
                                    } else {
                                        downloadDialog.continueSelectedDownload(createFile2);
                                        return;
                                    }
                                }
                                if (ordinal2 != 3) {
                                    return;
                                }
                            }
                            downloadDialog.downloadManager.forgetMission(storedFileHelper);
                        }
                        Uri uri3 = uri;
                        if (uri3 == null) {
                            storedFileHelper2 = storedDirectoryHelper2.createFile(str3, str4, false);
                        } else {
                            try {
                                storedFileHelper2 = new StoredFileHelper(downloadDialog.context, storedDirectoryHelper2.getUri(), uri3, storedDirectoryHelper2.tag);
                            } catch (IOException unused2) {
                                Log.e("DialogFragment", "Failed to take (or steal) the file in " + uri3.toString());
                            }
                        }
                        if (storedFileHelper2 == null || !storedFileHelper2.canWrite()) {
                            downloadDialog.showFailedDialog(R.string.error_file_creation);
                        } else {
                            downloadDialog.continueSelectedDownload(storedFileHelper2);
                        }
                    }
                });
                negativeButton.show();
            } else {
                int ordinal2 = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i2);
                if (ordinal2 == 1 || ordinal2 == 3) {
                    negativeButton.setPositiveButton(i4, new FeedFragment$$ExternalSyntheticLambda9(this, storedFileHelper, i));
                }
                negativeButton.show();
            }
        } catch (Exception e2) {
            ErrorUtil.createNotification(requireContext(), new ErrorInfo(e2, UserAction.DOWNLOAD_FAILED, "Getting storage", (Integer) null, 24));
        }
    }

    public final void continueSelectedDownload(StoredFileHelper storedFileHelper) {
        org.schabi.newpipe.extractor.stream.Stream item;
        char c;
        String str;
        String[] strArr;
        org.schabi.newpipe.extractor.stream.Stream stream;
        String str2;
        List unmodifiableList;
        String[] strArr2;
        if (!storedFileHelper.canWrite()) {
            showFailedDialog(R.string.permission_denied);
            return;
        }
        try {
            long j = 0;
            if (storedFileHelper.length() > 0) {
                storedFileHelper.assertValid();
                SharpStream stream2 = storedFileHelper.getStream();
                try {
                    stream2.setLength(0L);
                    stream2.close();
                } finally {
                }
            }
            int progress = this.dialogBinding.threads.getProgress() + 1;
            int checkedRadioButtonId = this.dialogBinding.videoAudioGroup.getCheckedRadioButtonId();
            org.schabi.newpipe.extractor.stream.Stream stream3 = null;
            if (checkedRadioButtonId == R.id.audio_button) {
                item = this.audioStreamsAdapter.getItem(this.selectedAudioIndex);
                c = 'a';
                if (item.getFormat() != MediaFormat.M4A) {
                    str = item.getFormat() == MediaFormat.WEBMA_OPUS ? "webm-ogg-d" : "mp4D-m4a";
                    str = null;
                    strArr = null;
                }
                strArr = null;
            } else if (checkedRadioButtonId == R.id.video_button) {
                item = this.videoStreamsAdapter.getItem(this.selectedVideoIndex);
                SecondaryStreamHelper secondaryStreamHelper = (SecondaryStreamHelper) this.videoStreamsAdapter.secondaryStreams.get(this.wrappedVideoStreams.getStreamsList().indexOf(item));
                if (secondaryStreamHelper != null) {
                    int i = secondaryStreamHelper.position;
                    StreamItemAdapter.StreamInfoWrapper streamInfoWrapper = secondaryStreamHelper.streams;
                    stream = (org.schabi.newpipe.extractor.stream.Stream) streamInfoWrapper.getStreamsList().get(i);
                    str2 = item.getFormat() == MediaFormat.MPEG_4 ? "mp4D-mp4" : "webm";
                    long sizeInBytes = this.wrappedVideoStreams.getSizeInBytes((VideoStream) item);
                    if (streamInfoWrapper.getSizeInBytes(i) > 0 && sizeInBytes > 0) {
                        j = streamInfoWrapper.getSizeInBytes(i) + sizeInBytes;
                    }
                } else {
                    stream = null;
                    str2 = null;
                }
                strArr = null;
                stream3 = stream;
                c = 'v';
                str = str2;
            } else {
                if (checkedRadioButtonId != R.id.subtitle_button) {
                    return;
                }
                item = this.subtitleStreamsAdapter.getItem(this.selectedSubtitleIndex);
                c = 's';
                if (item.getFormat() == MediaFormat.TTML) {
                    str = "ttml";
                    strArr = new String[]{item.getFormat().suffix, "false"};
                    progress = 1;
                } else {
                    progress = 1;
                    str = null;
                    strArr = null;
                }
            }
            if (stream3 == null) {
                strArr2 = new String[]{item.getContent()};
                Object[] objArr = {new MissionRecoveryInfo(item)};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                unmodifiableList = Owner.CC.m(obj, arrayList, obj, arrayList);
            } else {
                if (stream3.getDeliveryMethod() != DeliveryMethod.PROGRESSIVE_HTTP) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$2(stream3.getDeliveryMethod(), "Unsupported stream delivery format");
                    return;
                }
                String[] strArr3 = {item.getContent(), stream3.getContent()};
                Object[] objArr2 = {new MissionRecoveryInfo(item), new MissionRecoveryInfo(stream3)};
                ArrayList arrayList2 = new ArrayList(2);
                int i2 = 0;
                while (i2 < 2) {
                    Object obj2 = objArr2[i2];
                    i2 = RecordTag.m(obj2, arrayList2, obj2, i2, 1);
                }
                unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
                strArr2 = strArr3;
            }
            Context context = this.context;
            StreamInfo streamInfo = this.currentInfo;
            ArrayList arrayList3 = new ArrayList(unmodifiableList);
            int i3 = DownloadManagerService.$r8$clinit;
            context.startService(new Intent(context, (Class<?>) DownloadManagerService.class).setAction("android.intent.action.RUN").putExtra("DownloadManagerService.extra.urls", strArr2).putExtra("DownloadManagerService.extra.kind", c).putExtra("DownloadManagerService.extra.threads", progress).putExtra("DownloadManagerService.extra.postprocessingName", str).putExtra("DownloadManagerService.extra.postprocessingArgs", strArr).putExtra("DownloadManagerService.extra.nearLength", j).putExtra("DownloadManagerService.extra.recoveryInfo", arrayList3).putExtra("DownloadManagerService.extra.storageParentPath", storedFileHelper.getParentUri()).putExtra("DownloadManagerService.extra.storagePath", storedFileHelper.getUri()).putExtra("DownloadManagerService.extra.storageTag", storedFileHelper.getTag()).putExtra("DownloadManagerService.extra.streamInfo", streamInfo));
            Toast.makeText(this.context, getString(R.string.download_has_started), 0).show();
            dismissInternal(false, false);
        } catch (IOException e) {
            Log.e("DialogFragment", "Failed to truncate the file: " + storedFileHelper.getUri().toString(), e);
            showFailedDialog(R.string.overwrite_failed);
        }
    }

    public final void fetchStreamsSize() {
        CompositeDisposable compositeDisposable = this.disposables;
        compositeDisposable.clear();
        SingleOnErrorReturn fetchMoreInfoForWrapper = StreamItemAdapter.StreamInfoWrapper.fetchMoreInfoForWrapper(this.wrappedVideoStreams);
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new DownloadDialog$$ExternalSyntheticLambda1(this, 4), new DownloadDialog$$ExternalSyntheticLambda1(this, 1));
        fetchMoreInfoForWrapper.subscribe(consumerSingleObserver);
        compositeDisposable.add(consumerSingleObserver);
        SingleOnErrorReturn fetchMoreInfoForWrapper2 = StreamItemAdapter.StreamInfoWrapper.fetchMoreInfoForWrapper(getWrappedAudioStreams());
        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new DownloadDialog$$ExternalSyntheticLambda1(this, 5), new DownloadDialog$$ExternalSyntheticLambda1(this, 2));
        fetchMoreInfoForWrapper2.subscribe(consumerSingleObserver2);
        compositeDisposable.add(consumerSingleObserver2);
        SingleOnErrorReturn fetchMoreInfoForWrapper3 = StreamItemAdapter.StreamInfoWrapper.fetchMoreInfoForWrapper(this.wrappedSubtitleStreams);
        ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new DownloadDialog$$ExternalSyntheticLambda1(this, 6), new DownloadDialog$$ExternalSyntheticLambda1(this, 3));
        fetchMoreInfoForWrapper3.subscribe(consumerSingleObserver3);
        compositeDisposable.add(consumerSingleObserver3);
    }

    public final StreamItemAdapter.StreamInfoWrapper getWrappedAudioStreams() {
        int i = this.selectedAudioTrackIndex;
        return (i < 0 || i > this.wrappedAudioTracks.size()) ? StreamItemAdapter.StreamInfoWrapper.EMPTY : (StreamItemAdapter.StreamInfoWrapper) this.wrappedAudioTracks.getTracksList().get(this.selectedAudioTrackIndex);
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        boolean z;
        if (i == R.id.audio_button) {
            setupAudioSpinner();
        } else if (i == R.id.video_button) {
            setupVideoSpinner();
        } else if (i == R.id.subtitle_button) {
            setupSubtitleSpinner();
            z = false;
            this.dialogBinding.threads.setEnabled(z);
        }
        z = true;
        this.dialogBinding.threads.setEnabled(z);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        if (!Utility.checkStoragePermissions(getActivity(), 778)) {
            dismissInternal(false, false);
            return;
        }
        Context context = getContext();
        this.context = context;
        setStyle(Options.Companion.isLightThemeSelected(context) ? R.style.LightDialogTheme : R.style.DarkDialogTheme);
        Bridge.restoreInstanceState(this, bundle);
        this.audioTrackAdapter = new AudioTrackAdapter(this.wrappedAudioTracks);
        this.subtitleStreamsAdapter = new StreamItemAdapter(this.wrappedSubtitleStreams);
        updateSecondaryStreams();
        Intent intent = new Intent(this.context, (Class<?>) DownloadManagerService.class);
        this.context.startService(intent);
        this.context.bindService(intent, new AnonymousClass1(this, i), 1);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.download_dialog, viewGroup);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.disposables.clear();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.dialogBinding = null;
        super.onDestroyView();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        int id = adapterView.getId();
        if (id != R.id.quality_spinner) {
            if (id != R.id.audio_track_spinner) {
                if (id == R.id.audio_stream_spinner) {
                    this.selectedAudioIndex = i;
                    return;
                }
                return;
            } else {
                boolean z = this.selectedAudioTrackIndex != i;
                this.selectedAudioTrackIndex = i;
                if (z) {
                    updateSecondaryStreams();
                    fetchStreamsSize();
                    return;
                }
                return;
            }
        }
        int checkedRadioButtonId = this.dialogBinding.videoAudioGroup.getCheckedRadioButtonId();
        if (checkedRadioButtonId == R.id.video_button) {
            this.selectedVideoIndex = i;
            onVideoStreamSelected();
        } else if (checkedRadioButtonId == R.id.subtitle_button) {
            this.selectedSubtitleIndex = i;
        }
        String createFilename = OperationKt.createFilename(getContext(), this.currentInfo.getName());
        String str = (String) Optional.ofNullable(this.dialogBinding.fileName.getText()).map(new Nodes$$ExternalSyntheticLambda0(19)).orElse("");
        if (str.isEmpty() || str.equals(createFilename) || str.startsWith(getString(R.string.caption_file_name, createFilename, ""))) {
            int checkedRadioButtonId2 = this.dialogBinding.videoAudioGroup.getCheckedRadioButtonId();
            if (checkedRadioButtonId2 == R.id.audio_button || checkedRadioButtonId2 == R.id.video_button) {
                if (str.equals(createFilename)) {
                    return;
                }
                this.dialogBinding.fileName.setText(createFilename);
            } else if (checkedRadioButtonId2 == R.id.subtitle_button) {
                this.dialogBinding.fileName.setText(getString(R.string.caption_file_name, createFilename, ((SubtitlesStream) this.subtitleStreamsAdapter.getItem(this.selectedSubtitleIndex)).getLanguageTag()));
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    public final void onVideoStreamSelected() {
        boolean z = ((VideoStream) this.videoStreamsAdapter.getItem(this.selectedVideoIndex)).isVideoOnly;
        int i = 8;
        this.dialogBinding.audioTrackSpinner.setVisibility((!z || this.wrappedAudioTracks.size() <= 1) ? 8 : 0);
        NewPipeTextView newPipeTextView = this.dialogBinding.audioTrackPresentInVideoText;
        if (!z && this.wrappedAudioTracks.size() > 1) {
            i = 0;
        }
        newPipeTextView.setVisibility(i);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        int i = R.id.audio_button;
        RadioButton radioButton = (RadioButton) Options.Companion.findChildViewById(R.id.audio_button, view);
        if (radioButton != null) {
            i = R.id.audio_stream_spinner;
            Spinner spinner = (Spinner) Options.Companion.findChildViewById(R.id.audio_stream_spinner, view);
            if (spinner != null) {
                i = R.id.audio_track_present_in_video_text;
                NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.audio_track_present_in_video_text, view);
                if (newPipeTextView != null) {
                    i = R.id.audio_track_spinner;
                    Spinner spinner2 = (Spinner) Options.Companion.findChildViewById(R.id.audio_track_spinner, view);
                    if (spinner2 != null) {
                        i = R.id.file_name;
                        NewPipeEditText newPipeEditText = (NewPipeEditText) Options.Companion.findChildViewById(R.id.file_name, view);
                        if (newPipeEditText != null) {
                            i = R.id.file_name_text_view;
                            if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.file_name_text_view, view)) != null) {
                                i = R.id.quality_spinner;
                                Spinner spinner3 = (Spinner) Options.Companion.findChildViewById(R.id.quality_spinner, view);
                                if (spinner3 != null) {
                                    i = R.id.subtitle_button;
                                    RadioButton radioButton2 = (RadioButton) Options.Companion.findChildViewById(R.id.subtitle_button, view);
                                    if (radioButton2 != null) {
                                        i = R.id.threads;
                                        SeekBar seekBar = (SeekBar) Options.Companion.findChildViewById(R.id.threads, view);
                                        if (seekBar != null) {
                                            i = R.id.threads_count;
                                            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.threads_count, view);
                                            if (newPipeTextView2 != null) {
                                                i = R.id.threads_layout;
                                                if (((LinearLayout) Options.Companion.findChildViewById(R.id.threads_layout, view)) != null) {
                                                    i = R.id.threads_text_view;
                                                    if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.threads_text_view, view)) != null) {
                                                        i = R.id.toolbar_layout;
                                                        View findChildViewById = Options.Companion.findChildViewById(R.id.toolbar_layout, view);
                                                        if (findChildViewById != null) {
                                                            Printer bind = Printer.bind(findChildViewById);
                                                            i = R.id.video_audio_group;
                                                            RadioGroup radioGroup = (RadioGroup) Options.Companion.findChildViewById(R.id.video_audio_group, view);
                                                            if (radioGroup != null) {
                                                                i = R.id.video_button;
                                                                RadioButton radioButton3 = (RadioButton) Options.Companion.findChildViewById(R.id.video_button, view);
                                                                if (radioButton3 != null) {
                                                                    this.dialogBinding = new DownloadDialogBinding((RelativeLayout) view, radioButton, spinner, newPipeTextView, spinner2, newPipeEditText, spinner3, radioButton2, seekBar, newPipeTextView2, bind, radioGroup, radioButton3);
                                                                    if (this.context == null) {
                                                                        return;
                                                                    }
                                                                    newPipeEditText.setText(OperationKt.createFilename(getContext(), this.currentInfo.getName()));
                                                                    this.selectedAudioIndex = ListHelper.getDefaultAudioFormat(getContext(), getWrappedAudioStreams().getStreamsList());
                                                                    List streamsList = this.subtitleStreamsAdapter.streamsWrapper.getStreamsList();
                                                                    Localization preferredLocalization = Utility.getPreferredLocalization();
                                                                    int i2 = 0;
                                                                    int i3 = 0;
                                                                    int i4 = 0;
                                                                    while (true) {
                                                                        if (i3 >= streamsList.size()) {
                                                                            i3 = i4;
                                                                            break;
                                                                        }
                                                                        Locale locale = ((SubtitlesStream) streamsList.get(i3)).getLocale();
                                                                        boolean z = (locale.getLanguage() == null || preferredLocalization.getLanguageCode() == null || !locale.getLanguage().equals(new Locale(preferredLocalization.getLanguageCode()).getLanguage())) ? false : true;
                                                                        boolean z2 = locale.getCountry() != null && locale.getCountry().equals(preferredLocalization.getCountryCode());
                                                                        if (z) {
                                                                            if (z2) {
                                                                                break;
                                                                            } else {
                                                                                i4 = i3;
                                                                            }
                                                                        }
                                                                        i3++;
                                                                    }
                                                                    this.selectedSubtitleIndex = i3;
                                                                    this.dialogBinding.qualitySpinner.setOnItemSelectedListener(this);
                                                                    this.dialogBinding.audioStreamSpinner.setOnItemSelectedListener(this);
                                                                    this.dialogBinding.audioTrackSpinner.setOnItemSelectedListener(this);
                                                                    this.dialogBinding.videoAudioGroup.setOnCheckedChangeListener(this);
                                                                    Toolbar toolbar = (Toolbar) this.dialogBinding.toolbarLayout.accum;
                                                                    toolbar.setTitle(R.string.download_dialog_title);
                                                                    toolbar.setNavigationIcon(R.drawable.ic_arrow_back);
                                                                    toolbar.inflateMenu(R.menu.dialog_url);
                                                                    toolbar.setNavigationOnClickListener(new LoadingDialog$$ExternalSyntheticLambda0(this, 1));
                                                                    toolbar.setNavigationContentDescription(R.string.cancel);
                                                                    MenuItem findItem = toolbar.getMenu().findItem(R.id.okay);
                                                                    this.okButton = findItem;
                                                                    findItem.setEnabled(false);
                                                                    toolbar.setOnMenuItemClickListener(new DownloadDialog$$ExternalSyntheticLambda1(this, i2));
                                                                    setRadioButtonsState(false);
                                                                    if (getContext() != null) {
                                                                        this.dialogBinding.audioTrackSpinner.setAdapter((SpinnerAdapter) this.audioTrackAdapter);
                                                                        this.dialogBinding.audioTrackSpinner.setSelection(this.selectedAudioTrackIndex);
                                                                    }
                                                                    boolean z3 = this.videoStreamsAdapter.getCount() > 0;
                                                                    boolean z4 = this.audioStreamsAdapter.getCount() > 0;
                                                                    boolean z5 = this.subtitleStreamsAdapter.getCount() > 0;
                                                                    this.dialogBinding.audioButton.setVisibility(z4 ? 0 : 8);
                                                                    this.dialogBinding.videoButton.setVisibility(z3 ? 0 : 8);
                                                                    this.dialogBinding.subtitleButton.setVisibility(z5 ? 0 : 8);
                                                                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext());
                                                                    this.prefs = defaultSharedPreferences;
                                                                    String string = defaultSharedPreferences.getString(getString(R.string.last_used_download_type), getString(R.string.last_download_type_video_key));
                                                                    if (z3 && string.equals(getString(R.string.last_download_type_video_key))) {
                                                                        this.dialogBinding.videoButton.setChecked(true);
                                                                        setupVideoSpinner();
                                                                    } else if (z4 && string.equals(getString(R.string.last_download_type_audio_key))) {
                                                                        this.dialogBinding.audioButton.setChecked(true);
                                                                        setupAudioSpinner();
                                                                    } else if (z5 && string.equals(getString(R.string.last_download_type_subtitle_key))) {
                                                                        this.dialogBinding.subtitleButton.setChecked(true);
                                                                        setupSubtitleSpinner();
                                                                    } else if (z3) {
                                                                        this.dialogBinding.videoButton.setChecked(true);
                                                                        setupVideoSpinner();
                                                                    } else if (z4) {
                                                                        this.dialogBinding.audioButton.setChecked(true);
                                                                        setupAudioSpinner();
                                                                    } else if (z5) {
                                                                        this.dialogBinding.subtitleButton.setChecked(true);
                                                                        setupSubtitleSpinner();
                                                                    } else {
                                                                        Toast.makeText(getContext(), R.string.no_streams_available_download, 0).show();
                                                                        dismissInternal(false, false);
                                                                    }
                                                                    SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(requireContext());
                                                                    this.prefs = defaultSharedPreferences2;
                                                                    int i5 = defaultSharedPreferences2.getInt(getString(R.string.default_download_threads), 3);
                                                                    this.dialogBinding.threadsCount.setText(String.valueOf(i5));
                                                                    this.dialogBinding.threads.setProgress(i5 - 1);
                                                                    this.dialogBinding.threads.setOnSeekBarChangeListener(new SimpleOnSeekBarChangeListener() { // from class: org.schabi.newpipe.download.DownloadDialog.2
                                                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                                        public final void onProgressChanged(SeekBar seekBar2, int i6, boolean z6) {
                                                                            int i7 = i6 + 1;
                                                                            DownloadDialog downloadDialog = DownloadDialog.this;
                                                                            downloadDialog.prefs.edit().putInt(downloadDialog.getString(R.string.default_download_threads), i7).apply();
                                                                            downloadDialog.dialogBinding.threadsCount.setText(String.valueOf(i7));
                                                                        }
                                                                    });
                                                                    fetchStreamsSize();
                                                                    return;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public final void requestDownloadPickFolderResult(ActivityResult activityResult, String str, String str2) {
        int i = activityResult.resultCode;
        Intent intent = activityResult.data;
        if (i != -1) {
            return;
        }
        if (intent == null || intent.getData() == null) {
            showFailedDialog(R.string.general_error);
            return;
        }
        Uri data = intent.getData();
        if (FilePickerActivityHelper.isOwnFileUri(this.context, data)) {
            data = Uri.fromFile(RangesKt.getFileForUri(data));
        } else {
            Context context = this.context;
            context.grantUriPermission(context.getPackageName(), data, 3);
        }
        PreferenceManager.getDefaultSharedPreferences(this.context).edit().putString(str, data.toString()).apply();
        try {
            StoredDirectoryHelper storedDirectoryHelper = new StoredDirectoryHelper(this.context, data, str2);
            checkSelectedDownload(storedDirectoryHelper, storedDirectoryHelper.findFile(this.filenameTmp), this.filenameTmp, this.mimeTmp);
        } catch (IOException unused) {
            showFailedDialog(R.string.general_error);
        }
    }

    public final void setRadioButtonsState(boolean z) {
        this.dialogBinding.audioButton.setEnabled(z);
        this.dialogBinding.videoButton.setEnabled(z);
        this.dialogBinding.subtitleButton.setEnabled(z);
    }

    public final void setupAudioSpinner() {
        if (getContext() == null) {
            return;
        }
        this.dialogBinding.qualitySpinner.setVisibility(8);
        setRadioButtonsState(true);
        this.dialogBinding.audioStreamSpinner.setAdapter((SpinnerAdapter) this.audioStreamsAdapter);
        this.dialogBinding.audioStreamSpinner.setSelection(this.selectedAudioIndex);
        this.dialogBinding.audioStreamSpinner.setVisibility(0);
        this.dialogBinding.audioTrackSpinner.setVisibility(this.wrappedAudioTracks.size() <= 1 ? 8 : 0);
        this.dialogBinding.audioTrackPresentInVideoText.setVisibility(8);
    }

    public final void setupSubtitleSpinner() {
        if (getContext() == null) {
            return;
        }
        this.dialogBinding.qualitySpinner.setAdapter((SpinnerAdapter) this.subtitleStreamsAdapter);
        this.dialogBinding.qualitySpinner.setSelection(this.selectedSubtitleIndex);
        this.dialogBinding.qualitySpinner.setVisibility(0);
        setRadioButtonsState(true);
        this.dialogBinding.audioStreamSpinner.setVisibility(8);
        this.dialogBinding.audioTrackSpinner.setVisibility(8);
        this.dialogBinding.audioTrackPresentInVideoText.setVisibility(8);
    }

    public final void setupVideoSpinner() {
        if (getContext() == null) {
            return;
        }
        this.dialogBinding.qualitySpinner.setAdapter((SpinnerAdapter) this.videoStreamsAdapter);
        this.dialogBinding.qualitySpinner.setSelection(this.selectedVideoIndex);
        this.dialogBinding.qualitySpinner.setVisibility(0);
        setRadioButtonsState(true);
        this.dialogBinding.audioStreamSpinner.setVisibility(8);
        onVideoStreamSelected();
    }

    public final void showFailedDialog(int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(R.string.general_error);
        builder.setMessage(i);
        String string = getString(R.string.ok);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mNegativeButtonText = string;
        alertParams.mNegativeButtonListener = null;
        builder.show();
    }

    public final void updateSecondaryStreams() {
        AudioStream audioStreamFor;
        StreamItemAdapter.StreamInfoWrapper wrappedAudioStreams = getWrappedAudioStreams();
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat(4);
        List streamsList = this.wrappedVideoStreams.getStreamsList();
        this.wrappedVideoStreams.resetInfo();
        for (int i = 0; i < streamsList.size(); i++) {
            if (((VideoStream) streamsList.get(i)).isVideoOnly && (audioStreamFor = SecondaryStreamHelper.getAudioStreamFor(this.context, wrappedAudioStreams.getStreamsList(), (VideoStream) streamsList.get(i))) != null) {
                sparseArrayCompat.append(i, new SecondaryStreamHelper(wrappedAudioStreams, audioStreamFor));
            }
        }
        this.videoStreamsAdapter = new StreamItemAdapter(this.wrappedVideoStreams, sparseArrayCompat);
        this.audioStreamsAdapter = new StreamItemAdapter(wrappedAudioStreams);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }

    public DownloadDialog() {
        final int i = 0;
        this.requestDownloadSaveAsLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i32 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
        final int i2 = 1;
        this.requestDownloadPickAudioFolderLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i2;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i32 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
        final int i3 = 2;
        this.requestDownloadPickVideoFolderLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback(this) { // from class: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda9
            public final /* synthetic */ DownloadDialog f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i22 = i3;
                DownloadDialog downloadDialog = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i22) {
                    case 0:
                        DownloadDialog.$r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(downloadDialog, activityResult);
                        break;
                    case 1:
                        int i32 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_audio_key), MimeTypes.BASE_TYPE_AUDIO);
                        break;
                    default:
                        int i4 = DownloadDialog.$r8$clinit;
                        downloadDialog.requestDownloadPickFolderResult(activityResult, downloadDialog.getString(R.string.download_path_video_key), MimeTypes.BASE_TYPE_VIDEO);
                        break;
                }
            }
        });
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.download.DownloadDialog$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public final class AnonymousClass1 implements ServiceConnection {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            int i = this.$r8$classId;
            int i2 = 0;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    DownloadDialog downloadDialog = (DownloadDialog) obj;
                    DownloadManagerService downloadManagerService = DownloadManagerService.this;
                    DownloadManager downloadManager = downloadManagerService.mManager;
                    downloadDialog.mainStorageAudio = downloadManager.mMainStorageAudio;
                    downloadDialog.mainStorageVideo = downloadManager.mMainStorageVideo;
                    downloadDialog.downloadManager = downloadManager;
                    downloadDialog.askForSavePath = downloadManagerService.mPrefs.getBoolean(downloadManagerService.getString(R.string.downloads_storage_ask), false);
                    downloadDialog.okButton.setEnabled(true);
                    downloadDialog.context.unbindService(this);
                    break;
                case 1:
                    PlayQueueActivity playQueueActivity = (PlayQueueActivity) obj;
                    int i3 = PlayQueueActivity.$r8$clinit;
                    Log.d("PlayQueueActivity", "Player service is connected");
                    if (iBinder instanceof PlayerService.LocalBinder) {
                        playQueueActivity.player = ((PlayerService) ((PlayerService.LocalBinder) iBinder).playerService.get()).player;
                    }
                    Player player = playQueueActivity.player;
                    if (player != null && player.playQueue != null && !player.exoPlayerIsNull()) {
                        playQueueActivity.onQueueUpdate(playQueueActivity.player.playQueue);
                        playQueueActivity.queueControlBinding.playQueue.setLayoutManager(new LinearLayoutManager(playQueueActivity));
                        playQueueActivity.queueControlBinding.playQueue.setClickable(true);
                        playQueueActivity.queueControlBinding.playQueue.setLongClickable(true);
                        playQueueActivity.queueControlBinding.playQueue.clearOnScrollListeners();
                        playQueueActivity.queueControlBinding.playQueue.addOnScrollListener(new MainPlayerUi.AnonymousClass2(playQueueActivity, 2));
                        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new MainPlayerUi.AnonymousClass4(playQueueActivity, 1));
                        playQueueActivity.itemTouchHelper = itemTouchHelper;
                        itemTouchHelper.attachToRecyclerView(playQueueActivity.queueControlBinding.playQueue);
                        playQueueActivity.queueControlBinding.metadata.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.songName.setSelected(true);
                        playQueueActivity.queueControlBinding.artistName.setSelected(true);
                        playQueueActivity.queueControlBinding.seekBar.setOnSeekBarChangeListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.liveSync.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlRepeat.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlBackward.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlFastRewind.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlPlayPause.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlFastForward.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlForward.setOnClickListener(playQueueActivity);
                        playQueueActivity.queueControlBinding.controlShuffle.setOnClickListener(playQueueActivity);
                        Player player2 = playQueueActivity.player;
                        if (player2 != null) {
                            player2.activityListener = playQueueActivity;
                            player2.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(player2, i2));
                            player2.notifyPlaybackUpdateToListeners();
                            player2.triggerProgressUpdate();
                            break;
                        }
                    } else {
                        playQueueActivity.unbind();
                        break;
                    }
                    break;
                default:
                    MissionsFragment missionsFragment = (MissionsFragment) obj;
                    DownloadManagerService.DownloadManagerBinder downloadManagerBinder = (DownloadManagerService.DownloadManagerBinder) iBinder;
                    missionsFragment.mBinder = downloadManagerBinder;
                    DownloadManagerService downloadManagerService2 = DownloadManagerService.this;
                    NotificationManager notificationManager = downloadManagerService2.mNotificationManager;
                    if (notificationManager != null) {
                        if (downloadManagerService2.downloadDoneNotification != null) {
                            notificationManager.cancel(1001);
                            downloadManagerService2.downloadDoneList.setLength(0);
                            downloadManagerService2.downloadDoneCount = 0;
                        }
                        if (downloadManagerService2.downloadFailedNotification != null) {
                            while (true) {
                                int i4 = downloadManagerService2.downloadFailedNotificationID;
                                if (i4 > 1001) {
                                    downloadManagerService2.mNotificationManager.cancel(i4);
                                    downloadManagerService2.downloadFailedNotificationID--;
                                } else {
                                    downloadManagerService2.mFailedDownloads.clear();
                                    downloadManagerService2.downloadFailedNotificationID++;
                                }
                            }
                        }
                    }
                    MissionAdapter missionAdapter = new MissionAdapter(missionsFragment.mContext, DownloadManagerService.this.mManager, missionsFragment.mEmpty, missionsFragment.getView());
                    missionsFragment.mAdapter = missionAdapter;
                    missionAdapter.mRecover = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(missionsFragment, 25);
                    missionsFragment.setAdapterButtons();
                    DownloadManagerService.this.mEchoObservers.add(missionsFragment.mAdapter);
                    DownloadManagerService.this.mDownloadNotificationEnable = false;
                    missionsFragment.updateList();
                    break;
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            switch (this.$r8$classId) {
                case 1:
                    int i = PlayQueueActivity.$r8$clinit;
                    Log.d("PlayQueueActivity", "Player service is disconnected");
                    break;
            }
        }

        private final void onServiceDisconnected$org$schabi$newpipe$download$DownloadDialog$1(ComponentName componentName) {
        }

        private final void onServiceDisconnected$us$shandian$giga$ui$fragment$MissionsFragment$1(ComponentName componentName) {
        }
    }
}
