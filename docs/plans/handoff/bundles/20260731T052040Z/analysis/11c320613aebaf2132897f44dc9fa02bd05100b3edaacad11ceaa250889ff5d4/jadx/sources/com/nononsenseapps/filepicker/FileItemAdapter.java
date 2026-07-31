package com.nononsenseapps.filepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;
import com.nononsenseapps.filepicker.AbstractFilePickerFragment;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Vector;
import kotlin.ranges.RangesKt;
import okhttp3.Cookie;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.settings.SelectKioskFragment;
import org.schabi.newpipe.settings.SelectKioskFragment$SelectKioskAdapter$Entry;
import org.schabi.newpipe.settings.SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;
import org.schabi.newpipe.util.ServiceHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileItemAdapter extends RecyclerView.Adapter {
    public final /* synthetic */ int $r8$classId;
    public Object mList;
    public final Object mLogic;

    public FileItemAdapter(SelectKioskFragment selectKioskFragment) {
        this.$r8$classId = 1;
        this.mList = selectKioskFragment;
        this.mLogic = new Vector();
        for (StreamingService streamingService : ServiceList.SERVICES) {
            TokenData kioskList = streamingService.getKioskList();
            int i = streamingService.serviceId;
            for (String str : ((HashMap) kioskList.builder).keySet()) {
                ((Vector) this.mLogic).add(new SelectKioskFragment$SelectKioskAdapter$Entry(ServiceHelper.getIcon(i), i, str, String.format(selectKioskFragment.getString(R.string.service_kiosk_string), streamingService.serviceInfo.name, RangesKt.getTranslatedKioskName(selectKioskFragment.getContext(), str))));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        switch (this.$r8$classId) {
            case 0:
                SortedList sortedList = (SortedList) this.mList;
                if (sortedList == null) {
                    return 0;
                }
                return sortedList.mSize + 1;
            default:
                return ((Vector) this.mLogic).size();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        switch (this.$r8$classId) {
            case 0:
                if (i == 0) {
                    return 0;
                }
                return ((AbstractFilePickerFragment) this.mLogic).isCheckable(((SortedList) this.mList).get(i - 1)) ? 2 : 1;
            default:
                return super.getItemViewType(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.mLogic;
        switch (i2) {
            case 0:
                AbstractFilePickerFragment abstractFilePickerFragment = (AbstractFilePickerFragment) obj;
                if (i != 0) {
                    AbstractFilePickerFragment.DirViewHolder dirViewHolder = (AbstractFilePickerFragment.DirViewHolder) viewHolder;
                    Object obj2 = ((SortedList) this.mList).get(i - 1);
                    abstractFilePickerFragment.getClass();
                    dirViewHolder.file = obj2;
                    dirViewHolder.icon.setVisibility(abstractFilePickerFragment.isDir(obj2) ? 0 : 8);
                    dirViewHolder.text.setText(abstractFilePickerFragment.getName(obj2));
                    if (abstractFilePickerFragment.isCheckable(obj2)) {
                        boolean contains = abstractFilePickerFragment.mCheckedItems.contains(obj2);
                        HashSet hashSet = abstractFilePickerFragment.mCheckedVisibleViewHolders;
                        if (!contains) {
                            hashSet.remove(dirViewHolder);
                            ((AbstractFilePickerFragment.CheckableViewHolder) dirViewHolder).checkbox.setChecked(false);
                            break;
                        } else {
                            AbstractFilePickerFragment.CheckableViewHolder checkableViewHolder = (AbstractFilePickerFragment.CheckableViewHolder) dirViewHolder;
                            hashSet.add(checkableViewHolder);
                            checkableViewHolder.checkbox.setChecked(true);
                            break;
                        }
                    }
                } else {
                    abstractFilePickerFragment.getClass();
                    ((AbstractFilePickerFragment.HeaderViewHolder) viewHolder).text.setText("..");
                    break;
                }
                break;
            default:
                SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder selectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder = (SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder) viewHolder;
                SelectKioskFragment$SelectKioskAdapter$Entry selectKioskFragment$SelectKioskAdapter$Entry = (SelectKioskFragment$SelectKioskAdapter$Entry) ((Vector) obj).get(i);
                selectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder.titleView.setText(selectKioskFragment$SelectKioskAdapter$Entry.kioskName);
                selectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder.thumbnailView.setImageDrawable(Cookie.Companion.getDrawable(((SelectKioskFragment) this.mList).requireContext(), selectKioskFragment$SelectKioskAdapter$Entry.icon));
                selectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder.view.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, selectKioskFragment$SelectKioskAdapter$Entry, 14));
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (this.$r8$classId) {
            case 0:
                return ((AbstractFilePickerFragment) this.mLogic).onCreateViewHolder(viewGroup, i);
            default:
                return new SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.select_kiosk_item, viewGroup, false));
        }
    }

    public FileItemAdapter(AbstractFilePickerFragment abstractFilePickerFragment) {
        this.$r8$classId = 0;
        this.mList = null;
        this.mLogic = abstractFilePickerFragment;
    }
}
