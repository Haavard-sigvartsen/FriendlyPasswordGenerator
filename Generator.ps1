$Wordlist = Import-Csv -LiteralPath "C:\Users\hsi600\OneDrive - Helse Nord RHF\Documents\PowerShell\EvenFriendlierPasswordGenerator\Wordlist.csv"
cls

$Password = $null
Do {
    $RandomNumb_nummer = Get-Random -Minimum 0 -Maximum 101
    $RandomNumb_HarVerb = Get-Random -Minimum 0 -Maximum $Wordlist.HarVerb.Count
    $ChooseWordList = get-random -minimum 1 -maximum 4

    switch ($ChooseWordList) {
        1 {$PickedWordList = $Wordlist.Ord1}
        2 {$PickedWordList = $Wordlist.Ord1}
        3 {$PickedWordList = $Wordlist.Ord1}
    }
    $RandomNumb_Ord = Get-Random -Minimum 0 -Maximum $PickedWordList.Count

    $ChooseVerb = get-random -minimum 1 -maximum 3
    switch ($ChooseVerb) {
        1 {$ChooseVerb = $Wordlist.Verb}
        2 {$ChooseVerb = $Wordlist.HarVerb}
    } 

    $Password = $ChooseVerb[$RandomNumb_HarVerb] + $PickedWordList[$RandomNumb_Ord] + $RandomNumb_nummer
} until ($Password.Length -gt "12" -and $Password.Length -le "20") 
$Password
$Password.Length