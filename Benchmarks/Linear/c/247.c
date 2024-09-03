//svcomp_id_trans
int main(){
    int idBitLength;
    int material_length;
    int nlen;
    int j;
    int k;

    //pre-condition
    assume(nlen == idBitLength / 32);
    assume(idBitLength >= 0);
    assume(material_length >= 0);
    j = 0;

    //loop-body
    while((j < idBitLength / 8) && (j < material_length)){
       j = j + 1;
    }

    //post-condition
    assert(j <= material_length);
}
