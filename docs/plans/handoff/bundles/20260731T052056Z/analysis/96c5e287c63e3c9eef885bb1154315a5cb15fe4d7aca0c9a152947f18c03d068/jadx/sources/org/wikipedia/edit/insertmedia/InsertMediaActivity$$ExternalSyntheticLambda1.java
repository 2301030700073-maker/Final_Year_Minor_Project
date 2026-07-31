package org.wikipedia.edit.insertmedia;

import android.view.MenuItem;
import android.view.View;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InsertMediaActivity$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InsertMediaActivity f$0;

    public /* synthetic */ InsertMediaActivity$$ExternalSyntheticLambda1(InsertMediaActivity insertMediaActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = insertMediaActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        InsertMediaActivity insertMediaActivity = this.f$0;
        switch (i) {
            case 0:
                if (insertMediaActivity.actionMode == null) {
                    insertMediaActivity.actionMode = insertMediaActivity.startSupportActionMode(insertMediaActivity.searchActionModeCallback);
                    break;
                }
                break;
            default:
                int i2 = InsertMediaActivity.$r8$clinit;
                Object tag = view.getTag();
                tag.getClass();
                insertMediaActivity.onOptionsItemSelected((MenuItem) tag);
                break;
        }
    }
}
