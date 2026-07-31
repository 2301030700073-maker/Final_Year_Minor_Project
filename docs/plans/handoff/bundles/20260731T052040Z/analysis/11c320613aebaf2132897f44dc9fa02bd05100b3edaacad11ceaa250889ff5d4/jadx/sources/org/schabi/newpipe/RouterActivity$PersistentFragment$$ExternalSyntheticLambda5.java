package org.schabi.newpipe;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$PersistentFragment$$ExternalSyntheticLambda5 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RouterActivity.PersistentFragment f$0;

    public /* synthetic */ RouterActivity$PersistentFragment$$ExternalSyntheticLambda5(RouterActivity.PersistentFragment persistentFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = persistentFragment;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        RouterActivity.PersistentFragment persistentFragment = this.f$0;
        switch (i) {
            case 0:
                FragmentManagerImpl supportFragmentManager = ((AppCompatActivity) obj).getSupportFragmentManager();
                supportFragmentManager.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
                backStackRecord.remove(persistentFragment);
                backStackRecord.commit();
                break;
            default:
                persistentFragment.runOnVisible(new Player$$ExternalSyntheticLambda1((PlaylistDialog) obj, 3));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
