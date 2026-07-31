package org.wikipedia.readinglist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import com.google.android.material.materialswitch.MaterialSwitch;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.readinglist.ReadingListItemActionsDialog;
import org.wikipedia.readinglist.ReadingListItemActionsView;
import org.wikipedia.readinglist.database.ReadingListPage;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListItemActionsView extends LinearLayout {
    public final Retrofit binding;
    public Callback callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public ReadingListItemActionsView(Context context) {
        super(context);
        LayoutInflater.from(getContext()).inflate(R.layout.view_reading_list_page_actions, this);
        int i = R.id.reading_list_item_add_to_other;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_add_to_other);
        if (linearLayout != null) {
            i = R.id.reading_list_item_move_to_other;
            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_move_to_other);
            if (linearLayout2 != null) {
                i = R.id.reading_list_item_offline;
                LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_offline);
                if (linearLayout3 != null) {
                    i = R.id.reading_list_item_offline_switch;
                    MaterialSwitch materialSwitch = (MaterialSwitch) Room.findChildViewById(this, R.id.reading_list_item_offline_switch);
                    if (materialSwitch != null) {
                        i = R.id.reading_list_item_remove;
                        LinearLayout linearLayout4 = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_remove);
                        if (linearLayout4 != null) {
                            i = R.id.reading_list_item_remove_text;
                            TextView textView = (TextView) Room.findChildViewById(this, R.id.reading_list_item_remove_text);
                            if (textView != null) {
                                i = R.id.reading_list_item_select;
                                LinearLayout linearLayout5 = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_select);
                                if (linearLayout5 != null) {
                                    i = R.id.reading_list_item_share;
                                    LinearLayout linearLayout6 = (LinearLayout) Room.findChildViewById(this, R.id.reading_list_item_share);
                                    if (linearLayout6 != null) {
                                        i = R.id.reading_list_item_title;
                                        TextView textView2 = (TextView) Room.findChildViewById(this, R.id.reading_list_item_title);
                                        if (textView2 != null) {
                                            this.binding = new Retrofit(this, linearLayout, linearLayout2, linearLayout3, materialSwitch, linearLayout4, textView, linearLayout5, linearLayout6, textView2);
                                            final int i2 = 1;
                                            setOrientation(1);
                                            final int i3 = 0;
                                            linearLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i4 = i3;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i4) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
                                            linearLayout6.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i4 = i2;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i4) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
                                            final int i4 = 2;
                                            linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i42 = i4;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
                                            final int i5 = 3;
                                            linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i42 = i5;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
                                            final int i6 = 4;
                                            linearLayout5.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i42 = i6;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
                                            final int i7 = 5;
                                            linearLayout4.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.readinglist.ReadingListItemActionsView$$ExternalSyntheticLambda0
                                                public final /* synthetic */ ReadingListItemActionsView f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    ReadingListItemActionsDialog.Callback callback;
                                                    ReadingListItemActionsDialog.Callback callback2;
                                                    ReadingListItemActionsDialog.Callback callback3;
                                                    ReadingListItemActionsDialog.Callback callback4;
                                                    ReadingListItemActionsDialog.Callback callback5;
                                                    ReadingListItemActionsDialog.Callback callback6;
                                                    int i42 = i7;
                                                    ReadingListItemActionsView readingListItemActionsView = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            ReadingListItemActionsView.Callback callback7 = readingListItemActionsView.callback;
                                                            if (callback7 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog = (ReadingListItemActionsDialog) ((AvPlayer) callback7).player;
                                                                readingListItemActionsDialog.dismiss();
                                                                ReadingListPage readingListPage = readingListItemActionsDialog.readingListPage;
                                                                if (readingListPage != null && (callback = readingListItemActionsDialog.callback()) != null) {
                                                                    callback.onToggleItemOffline(readingListPage.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 1:
                                                            ReadingListItemActionsView.Callback callback8 = readingListItemActionsView.callback;
                                                            if (callback8 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog2 = (ReadingListItemActionsDialog) ((AvPlayer) callback8).player;
                                                                readingListItemActionsDialog2.dismiss();
                                                                ReadingListPage readingListPage2 = readingListItemActionsDialog2.readingListPage;
                                                                if (readingListPage2 != null && (callback2 = readingListItemActionsDialog2.callback()) != null) {
                                                                    callback2.onShareItem(readingListPage2.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 2:
                                                            ReadingListItemActionsView.Callback callback9 = readingListItemActionsView.callback;
                                                            if (callback9 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog3 = (ReadingListItemActionsDialog) ((AvPlayer) callback9).player;
                                                                readingListItemActionsDialog3.dismiss();
                                                                ReadingListPage readingListPage3 = readingListItemActionsDialog3.readingListPage;
                                                                if (readingListPage3 != null && (callback3 = readingListItemActionsDialog3.callback()) != null) {
                                                                    callback3.onAddItemToOther(readingListPage3.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 3:
                                                            ReadingListItemActionsView.Callback callback10 = readingListItemActionsView.callback;
                                                            if (callback10 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog4 = (ReadingListItemActionsDialog) ((AvPlayer) callback10).player;
                                                                readingListItemActionsDialog4.dismiss();
                                                                ReadingListPage readingListPage4 = readingListItemActionsDialog4.readingListPage;
                                                                if (readingListPage4 != null && (callback4 = readingListItemActionsDialog4.callback()) != null) {
                                                                    callback4.onMoveItemToOther(readingListPage4.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        case 4:
                                                            ReadingListItemActionsView.Callback callback11 = readingListItemActionsView.callback;
                                                            if (callback11 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog5 = (ReadingListItemActionsDialog) ((AvPlayer) callback11).player;
                                                                readingListItemActionsDialog5.dismiss();
                                                                ReadingListPage readingListPage5 = readingListItemActionsDialog5.readingListPage;
                                                                if (readingListPage5 != null && (callback5 = readingListItemActionsDialog5.callback()) != null) {
                                                                    callback5.onSelectItem(readingListPage5.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        default:
                                                            ReadingListItemActionsView.Callback callback12 = readingListItemActionsView.callback;
                                                            if (callback12 != null) {
                                                                ReadingListItemActionsDialog readingListItemActionsDialog6 = (ReadingListItemActionsDialog) ((AvPlayer) callback12).player;
                                                                readingListItemActionsDialog6.dismiss();
                                                                ReadingListPage readingListPage6 = readingListItemActionsDialog6.readingListPage;
                                                                if (readingListPage6 != null && (callback6 = readingListItemActionsDialog6.callback()) != null) {
                                                                    callback6.onDeleteItem(readingListPage6.id);
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            });
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}
