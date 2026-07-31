package org.schabi.newpipe.player.ui;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.function.Consumer;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda2;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda4;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda2;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerUiList {
    public final Object playerUis;

    public PlayerUiList(Activity activity, Fragment fragment, StreamInfoItem streamInfoItem, ArrayList arrayList) {
        View inflate = View.inflate(activity, R.layout.dialog_title, null);
        int i = 1;
        inflate.setSelected(true);
        ((TextView) inflate.findViewById(R.id.itemTitleView)).setText(streamInfoItem.getName());
        TextView textView = (TextView) inflate.findViewById(R.id.itemAdditionalDetails);
        int i2 = 8;
        if (streamInfoItem.getUploaderName() != null) {
            textView.setText(streamInfoItem.getUploaderName());
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
        }
        String[] strArr = (String[]) Collection.EL.stream(arrayList).map(new Player$$ExternalSyntheticLambda41(activity, i2)).toArray(new Utils$$ExternalSyntheticLambda2(3));
        ErrorActivity$$ExternalSyntheticLambda4 errorActivity$$ExternalSyntheticLambda4 = new ErrorActivity$$ExternalSyntheticLambda4(i, arrayList, fragment, streamInfoItem);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mCustomTitleView = inflate;
        alertParams.mItems = strArr;
        alertParams.mOnClickListener = errorActivity$$ExternalSyntheticLambda4;
        this.playerUis = builder.create();
    }

    public void addAndPrepare(PlayerUi playerUi) {
        Player player = playerUi.player;
        if (Optional.ofNullable(player.fragmentListener).isPresent()) {
            playerUi.onFragmentListenerSet();
        }
        if (!player.exoPlayerIsNull()) {
            playerUi.initPlayer();
            if (player.playQueue != null) {
                playerUi.initPlayback();
            }
        }
        ((ArrayList) this.playerUis).add(playerUi);
    }

    public void call(Consumer consumer) {
        Collection.EL.stream((ArrayList) this.playerUis).forEachOrdered(consumer);
    }

    public void destroyAll(Class cls) {
        ArrayList arrayList = (ArrayList) this.playerUis;
        Collection.EL.stream(arrayList).filter(new Element$$ExternalSyntheticLambda1(1, cls)).forEach(new Player$$ExternalSyntheticLambda3(15));
        Collection.EL.removeIf(arrayList, new Element$$ExternalSyntheticLambda1(1, cls));
    }

    public Optional get(Class cls) {
        return Collection.EL.stream((ArrayList) this.playerUis).filter(new Element$$ExternalSyntheticLambda1(1, cls)).map(new Element$$ExternalSyntheticLambda2(1, cls)).findFirst();
    }

    public void show() {
        ((AlertDialog) this.playerUis).show();
    }

    public PlayerUiList(PlayerUi... playerUiArr) {
        ArrayList arrayList = new ArrayList();
        this.playerUis = arrayList;
        ArrayList arrayList2 = new ArrayList(playerUiArr.length);
        for (PlayerUi playerUi : playerUiArr) {
            Objects.requireNonNull(playerUi);
            arrayList2.add(playerUi);
        }
        arrayList.addAll(DesugarCollections.unmodifiableList(arrayList2));
    }
}
