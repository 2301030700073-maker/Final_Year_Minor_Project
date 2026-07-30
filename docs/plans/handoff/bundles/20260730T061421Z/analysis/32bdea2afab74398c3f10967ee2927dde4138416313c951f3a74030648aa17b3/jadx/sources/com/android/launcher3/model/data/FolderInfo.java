package com.android.launcher3.model.data;

import android.os.Process;
import android.text.TextUtils;
import b.e.b.d;
import com.android.launcher3.Utilities;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.ContentWriter;
import java.util.ArrayList;
import java.util.OptionalInt;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public class FolderInfo extends ItemInfo {
    public ArrayList contents = new ArrayList();
    public ArrayList mListeners = new ArrayList();
    public int options;
    public FolderNameInfos suggestedFolderNames;

    public interface FolderListener {
        void onAdd(WorkspaceItemInfo workspaceItemInfo, int i);

        void onItemsChanged(boolean z);

        void onRemove(WorkspaceItemInfo workspaceItemInfo);
    }

    public enum LabelState {
        UNLABELED(LauncherAtom$Attribute.UNLABELED),
        EMPTY(LauncherAtom$Attribute.EMPTY_LABEL),
        SUGGESTED(LauncherAtom$Attribute.SUGGESTED_LABEL),
        MANUAL(LauncherAtom$Attribute.MANUAL_LABEL);

        public final LauncherAtom$Attribute mLogAttribute;

        LabelState(LauncherAtom$Attribute launcherAtom$Attribute) {
            this.mLogAttribute = launcherAtom$Attribute;
        }
    }

    public FolderInfo() {
        this.itemType = 2;
        this.user = Process.myUserHandle();
    }

    public void add(WorkspaceItemInfo workspaceItemInfo, int i, boolean z) {
        int boundToRange = Utilities.boundToRange(i, 0, this.contents.size());
        this.contents.add(boundToRange, workspaceItemInfo);
        for (int i2 = 0; i2 < this.mListeners.size(); i2++) {
            ((FolderListener) this.mListeners.get(i2)).onAdd(workspaceItemInfo, boundToRange);
        }
        itemsChanged(z);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        LauncherAtom$FolderIcon.Builder builder = (LauncherAtom$FolderIcon.Builder) LauncherAtom$FolderIcon.DEFAULT_INSTANCE.createBuilder();
        int size = this.contents.size();
        builder.copyOnWrite();
        LauncherAtom$FolderIcon launcherAtom$FolderIcon = (LauncherAtom$FolderIcon) builder.instance;
        launcherAtom$FolderIcon.bitField0_ |= 1;
        launcherAtom$FolderIcon.cardinality_ = size;
        defaultItemInfoBuilder.copyOnWrite();
        LauncherAtom$ItemInfo.access$1900((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, builder);
        int i = this.rank;
        defaultItemInfoBuilder.copyOnWrite();
        LauncherAtom$ItemInfo launcherAtom$ItemInfo = (LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance;
        launcherAtom$ItemInfo.bitField0_ |= 32;
        launcherAtom$ItemInfo.rank_ = i;
        LauncherAtom$Attribute launcherAtom$Attribute = getLabelState().mLogAttribute;
        defaultItemInfoBuilder.copyOnWrite();
        LauncherAtom$ItemInfo.access$3000((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, launcherAtom$Attribute);
        defaultItemInfoBuilder.setContainerInfo(getContainerInfo());
        return (LauncherAtom$ItemInfo) defaultItemInfoBuilder.build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public String dumpProperties() {
        return String.format("%s; labelState=%s", super.dumpProperties(), getLabelState());
    }

    public OptionalInt getAcceptedSuggestionIndex() {
        CharSequence charSequence = this.title;
        d.d(charSequence, "Expected valid folder label, but found null");
        final String charSequence2 = charSequence.toString();
        FolderNameInfos folderNameInfos = this.suggestedFolderNames;
        if (folderNameInfos == null || !folderNameInfos.hasSuggestions()) {
            return OptionalInt.empty();
        }
        final CharSequence[] charSequenceArr = this.suggestedFolderNames.mLabels;
        return IntStream.range(0, charSequenceArr.length).filter(new IntPredicate() { // from class: c.a.a.N0.h0.c
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                CharSequence[] charSequenceArr2 = charSequenceArr;
                return !TextUtils.isEmpty(charSequenceArr2[i]) && charSequence2.equalsIgnoreCase(charSequenceArr2[i].toString());
            }
        }).sequential().findFirst();
    }

    public LauncherAtom$FromState getFromLabelState() {
        int ordinal = getLabelState().ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? LauncherAtom$FromState.FROM_STATE_UNSPECIFIED : LauncherAtom$FromState.FROM_CUSTOM : LauncherAtom$FromState.FROM_SUGGESTED : LauncherAtom$FromState.FROM_EMPTY;
    }

    public LabelState getLabelState() {
        CharSequence charSequence = this.title;
        if (charSequence == null) {
            return LabelState.UNLABELED;
        }
        if (charSequence.length() == 0) {
            return LabelState.EMPTY;
        }
        return (this.options & 8) != 0 ? LabelState.MANUAL : LabelState.SUGGESTED;
    }

    public void itemsChanged(boolean z) {
        for (int i = 0; i < this.mListeners.size(); i++) {
            ((FolderListener) this.mListeners.get(i)).onItemsChanged(z);
        }
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ItemInfo makeShallowCopy() {
        FolderInfo folderInfo = new FolderInfo();
        folderInfo.copyFrom(this);
        folderInfo.contents = this.contents;
        return folderInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        CharSequence charSequence = this.title;
        contentWriter.mValues.put("title", charSequence == null ? null : charSequence.toString());
        contentWriter.mValues.put("options", Integer.valueOf(this.options));
    }

    public void remove(WorkspaceItemInfo workspaceItemInfo, boolean z) {
        this.contents.remove(workspaceItemInfo);
        for (int i = 0; i < this.mListeners.size(); i++) {
            ((FolderListener) this.mListeners.get(i)).onRemove(workspaceItemInfo);
        }
        itemsChanged(z);
    }

    public void setOption(int i, boolean z, ModelWriter modelWriter) {
        int i2 = this.options;
        if (z) {
            this.options = i | i2;
        } else {
            this.options = (~i) & i2;
        }
        if (modelWriter == null || i2 == this.options) {
            return;
        }
        modelWriter.updateItemInDatabase(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void setTitle(CharSequence charSequence, ModelWriter modelWriter) {
        Object obj = LabelState.MANUAL;
        if (TextUtils.isEmpty(charSequence) && this.title == null) {
            return;
        }
        if (charSequence == null || !charSequence.equals(this.title)) {
            this.title = charSequence;
            if ((charSequence == null ? LabelState.UNLABELED : charSequence.length() == 0 ? LabelState.EMPTY : getAcceptedSuggestionIndex().isPresent() ? LabelState.SUGGESTED : obj).equals(obj)) {
                this.options |= 8;
            } else {
                this.options &= -9;
            }
            if (modelWriter != null) {
                modelWriter.updateItemInDatabase(this);
            }
        }
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public LauncherAtom$ItemInfo buildProto() {
        return buildProto(null);
    }
}
