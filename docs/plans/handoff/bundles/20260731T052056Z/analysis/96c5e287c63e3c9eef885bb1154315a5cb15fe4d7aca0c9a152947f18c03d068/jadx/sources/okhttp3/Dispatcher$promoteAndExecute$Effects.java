package okhttp3;

import android.app.Activity;
import android.content.DialogInterface;
import androidx.room.Room;
import coil3.network.HttpException;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.wikipedia.R;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Dispatcher$promoteAndExecute$Effects {
    public final List callsToExecute;

    public Dispatcher$promoteAndExecute$Effects(ProtoBuf$TypeTable protoBuf$TypeTable) {
        protoBuf$TypeTable.getClass();
        List list = protoBuf$TypeTable.type_;
        if ((protoBuf$TypeTable.bitField0_ & 1) == 1) {
            int i = protoBuf$TypeTable.firstNullable_;
            list.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    Room.throwIndexOverflow();
                    throw null;
                }
                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) obj;
                if (i2 >= i) {
                    protoBuf$Type.getClass();
                    ProtoBuf$Type.Builder newBuilder = ProtoBuf$Type.newBuilder(protoBuf$Type);
                    newBuilder.bitField0_ |= 2;
                    newBuilder.nullable_ = true;
                    protoBuf$Type = newBuilder.buildPartial();
                    if (!protoBuf$Type.isInitialized()) {
                        throw new HttpException(false);
                    }
                }
                arrayList.add(protoBuf$Type);
                i2 = i3;
            }
            list = arrayList;
        }
        list.getClass();
        this.callsToExecute = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [org.wikipedia.readinglist.RemoveFromReadingListsDialog$$ExternalSyntheticLambda1] */
    public void deleteOrShowDialog(Activity activity, RemoveFromReadingListsDialog$Callback removeFromReadingListsDialog$Callback) {
        activity.getClass();
        List list = this.callsToExecute;
        if (list.isEmpty()) {
            return;
        }
        int i = 5;
        Continuation continuation = null;
        if (list.size() == 1 && !((ReadingList) list.get(0)).pages.isEmpty()) {
            AwaitKt.launch$default(AwaitKt.MainScope(), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, i), null, new PageActivity$onCreate$1$1$1(this, removeFromReadingListsDialog$Callback, continuation, 26), 2);
            return;
        }
        final boolean[] zArr = new boolean[list.size()];
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(activity, 0);
        materialAlertDialogBuilder.setTitle(R.string.reading_list_remove_from_lists);
        materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_remove_list_dialog_ok_button_text, new SurveyDialog$$ExternalSyntheticLambda8(this, zArr, removeFromReadingListsDialog$Callback, i));
        materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_remove_from_list_dialog_cancel_button_text, (DialogInterface.OnClickListener) null);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        materialAlertDialogBuilder.setMultiChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), zArr, (RemoveFromReadingListsDialog$$ExternalSyntheticLambda1) new DialogInterface.OnMultiChoiceClickListener() { // from class: org.wikipedia.readinglist.RemoveFromReadingListsDialog$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i2, boolean z) {
                zArr[i2] = z;
            }
        });
        materialAlertDialogBuilder.show();
    }

    public ProtoBuf$Type get(int i) {
        return (ProtoBuf$Type) this.callsToExecute.get(i);
    }

    public Dispatcher$promoteAndExecute$Effects(List list) {
        list.getClass();
        this.callsToExecute = list;
        TypeIntrinsics.asMutableList(list);
        UriUtil.sort(list, 0);
    }

    public /* synthetic */ Dispatcher$promoteAndExecute$Effects(List list, boolean z) {
        this.callsToExecute = list;
    }

    public Dispatcher$promoteAndExecute$Effects(ArrayList arrayList) {
        this.callsToExecute = DesugarCollections.unmodifiableList(arrayList);
    }
}
