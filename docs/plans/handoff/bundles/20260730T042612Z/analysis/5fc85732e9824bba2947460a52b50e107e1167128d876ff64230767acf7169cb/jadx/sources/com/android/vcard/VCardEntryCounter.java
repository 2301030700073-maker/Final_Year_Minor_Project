package com.android.vcard;

/* loaded from: classes.dex */
public class VCardEntryCounter implements VCardInterpreter {
    private int mCount;

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryStarted() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onPropertyCreated(VCardProperty vCardProperty) {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardEnded() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardStarted() {
    }

    public int getCount() {
        return this.mCount;
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryEnded() {
        this.mCount++;
    }
}
